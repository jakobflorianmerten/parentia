import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions";
import {
  onDocumentCreated,
  onDocumentUpdated,
} from "firebase-functions/v2/firestore";
import { getFirestore, FieldValue } from "firebase-admin/firestore";
import { getMessaging } from "firebase-admin/messaging";

setGlobalOptions({ maxInstances: 10 });
admin.initializeApp();

const DEFAULT_LANGUAGE = "en";

// Cloud Funktion, sobald eine Transaktion erstellt wurde, wird eine Notification an den Debitor geschickt
export const sendTransactionNotification = onDocumentCreated(
  "transactions/{txId}",
  async (event) => {
    if (!event.data) {
      console.warn("No document data available, exiting.");
      return null;
    }
    const snap = event.data;
    const data = snap.data() as {
      creditorId?: string;
      creditorName?: string;
      debtorId?: string;
      amount?: number;
    };
    if (
      !data.creditorName ||
      !data.creditorId ||
      !data.debtorId ||
      !data.amount
    ) {
      return null;
    }

    const txId = event.params.txId;
    const db = getFirestore();
    const userSnap = await db.collection("users").doc(data.debtorId).get();
    if (!userSnap.exists) return null;
    let userLanguage = DEFAULT_LANGUAGE;
    userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

    const dataAmount: string = data.amount.toFixed(2).replace(".", ",");

    // fetch the notification title and body from firestore
    const notificationTemplateSnap = await db
      .collection("notification_templates")
      .doc("payment_request")
      .get();
    if (!notificationTemplateSnap.exists) {
      console.warn("No notification template found, exiting.");
      return null;
    }
    const notificationTemplate = notificationTemplateSnap.data();
    if (!notificationTemplate) {
      console.warn("No notification template data found, exiting.");
      return null;
    }

    let templateForLang = notificationTemplate[userLanguage];
    if (!templateForLang) {
      console.warn(
        `No template for language ${userLanguage}, falling back to default.`
      );
      // Optional: fallback auf DEFAULT_LANGUAGE
      if (notificationTemplate[DEFAULT_LANGUAGE]) {
        templateForLang = notificationTemplate[DEFAULT_LANGUAGE];
      } else {
        return null;
      }
    }

    let notificationBody = templateForLang.body;
    notificationBody = notificationBody
      .replace("{name}", data.creditorName)
      .replace("{amount}", dataAmount);

    let notificationData = {
      title: templateForLang.title,
      body: notificationBody,
    };

    if (notificationData.title == null || notificationData.body == null) {
      console.log("Notification title oder body ist null");
      return;
    }

    await db
      .collection("users")
      .doc(data.debtorId)
      .collection("notifications")
      .add({
        title: notificationData.title,
        body: notificationData.body,
        type: "transaction_request",
        read: false,
        transactionId: txId,
        createdAt: FieldValue.serverTimestamp(),
      });
    console.log("Notification added to user's collection");

    const token = userSnap.data()?.fcmToken;
    if (!token) return null;

    const message = {
      token,
      notification: {
        title: notificationData.title,
        body: notificationData.body,
      },
    };

    try {
      const messaging = getMessaging();
      const resp = await messaging.send(message);
      console.log("Erfolgreich gesendet:", resp);
    } catch (err) {
      console.error("Fehler beim Senden:", err);
    }
    return null;
  }
);

// Cloud Funktion, sobald eine Transaktion akkzeptiert, oder abgelehnt wurde, wird eine Notification an den Debitor geschickt
export const sendTransactionResponseNotification = onDocumentUpdated(
  "transactions/{txId}",
  async (event) => {
    const before = event.data?.before.data();
    const after = event.data?.after.data();
    if (!before || !after) return null;

    if (
      before.status === "pending" &&
      (after.status === "active" || after.status === "rejected")
    ) {
      console.log(
        "Status hat sich geändert:",
        before.status,
        "->",
        after.status
      );
      if (!event.data) {
        console.warn("No document data available, exiting.");
        return null;
      }
      const snap = event.data.after;
      const data = snap.data() as {
        debtorName?: string;
        debtorId?: string;
        amount?: number;
        status?: string;
        creditorId?: string;
      };

      if (
        !data.debtorName ||
        !data.debtorId ||
        !data.amount ||
        !data.status ||
        !data.creditorId
      ) {
        return null;
      }
      const txId = event.params.txId;
      const userSnap = await getFirestore()
        .collection("users")
        .doc(data.debtorId)
        .get();
      if (!userSnap.exists) return null;

      let userLanguage = DEFAULT_LANGUAGE;
      userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

      const dataAmount: string = data.amount.toFixed(2).replace(".", ",");

      let notificationKey =
        data.status === "active"
          ? "transaction_accepted"
          : "transaction_rejected";

      // fetch the notification title and body from firestore
      const notificationTemplateSnap = await getFirestore()
        .collection("notification_templates")
        .doc(notificationKey)
        .get();
      if (!notificationTemplateSnap.exists) {
        console.warn("No notification template found, exiting.");
        return null;
      }
      const notificationTemplate = notificationTemplateSnap.data();
      if (!notificationTemplate) {
        console.warn("No notification template data found, exiting.");
        return null;
      }

      let templateForLang = notificationTemplate[userLanguage];
      if (!templateForLang) {
        console.warn(
          `No template for language ${userLanguage}, falling back to default.`
        );
        // Optional: fallback auf DEFAULT_LANGUAGE
        if (notificationTemplate[DEFAULT_LANGUAGE]) {
          templateForLang = notificationTemplate[DEFAULT_LANGUAGE];
        } else {
          return null;
        }
      }

      let notificationBody = templateForLang.body;
      notificationBody = notificationBody
        .replace("{name}", data.debtorName)
        .replace("{amount}", dataAmount);

      let notificationData = {
        title: templateForLang.title,
        body: notificationBody,
      };

      // Insert Message entry in "notifications" collection
      await getFirestore()
        .collection("users")
        .doc(data.creditorId)
        .collection("notifications")
        .add({
          title: notificationData.title,
          body: notificationData.body,
          type:
            data.status === "active"
              ? "transaction_accepted"
              : "transaction_rejected",
          read: false,
          transactionId: txId,
          createdAt: FieldValue.serverTimestamp(),
        });

      const token = userSnap.data()?.fcmToken;
      if (!token) return null;

      const message = {
        token,
        notification: {
          title: notificationData.title,
          body: notificationData.body,
        },
      };
      try {
        const resp = await getMessaging().send(message);
        console.log("Erfolgreich gesendet:", resp);
      } catch (err) {
        console.error("Fehler beim Senden:", err);
      }
    }

    return null;
  }
);

// Cloud Funktion, sobald eine Zahlung getätigt wurde vom Debitor, dann wird eine Notification an den Creditor geschickt
export const notifyCreditorOnPayment = onDocumentCreated(
  "transactions/{txId}/payments/{paymentId}",
  async (event) => {
    const paymentData = event.data?.data();
    if (!paymentData) return null;

    const txId = event.params.txId;
    const txSnap = await getFirestore()
      .collection("transactions")
      .doc(txId)
      .get();

    if (!txSnap.exists) return null;

    const transaction = txSnap.data() as {
      creditorId?: string;
      debtorName?: string;
      amount?: number;
    };

    if (!transaction.creditorId || !transaction.debtorName) return null;

    const creditorSnap = await getFirestore()
      .collection("users")
      .doc(transaction.creditorId)
      .get();

    if (!creditorSnap.exists) return null;

    let creditorLanguage = DEFAULT_LANGUAGE;
    creditorLanguage = creditorSnap.data()?.languageCode || DEFAULT_LANGUAGE;

    const creditor = creditorSnap.data();

    // Benachrichtigungstext vorbereiten
    const amountPaid = transaction.amount;
    const formattedAmount = amountPaid
      ? `${amountPaid.toFixed(2).replace(".", ",")}€`
      : "ein Betrag";

    // fetch the notification title and body from firestore
    const notificationTemplateSnap = await getFirestore()
      .collection("notification_templates")
      .doc("payment_request")
      .get();
    if (!notificationTemplateSnap.exists) {
      console.warn("No notification template found, exiting.");
      return null;
    }
    const notificationTemplate = notificationTemplateSnap.data();
    if (!notificationTemplate) {
      console.warn("No notification template data found, exiting.");
      return null;
    }

    let templateForLang = notificationTemplate[creditorLanguage];
    if (!templateForLang) {
      console.warn(
        `No template for language ${creditorLanguage}, falling back to default.`
      );
      // Optional: fallback auf DEFAULT_LANGUAGE
      if (notificationTemplate[DEFAULT_LANGUAGE]) {
        templateForLang = notificationTemplate[DEFAULT_LANGUAGE];
      } else {
        return null;
      }
    }

    let notificationBody = templateForLang.body;
    notificationBody = notificationBody
      .replace("{name}", transaction.debtorName)
      .replace("{amount}", formattedAmount);

    let notificationData = {
      title: templateForLang.title,
      body: notificationBody,
    };
    const token = creditor?.fcmToken;

    // Notification-Dokument in Subcollection hinzufügen
    await getFirestore()
      .collection("users")
      .doc(transaction.creditorId)
      .collection("notifications")
      .add({
        title: notificationData.title,
        body: notificationData.body,
        type: "payment_request",
        read: false,
        createdAt: FieldValue.serverTimestamp(),
      });

    if (token) {
      const message = {
        token,
        notification: {
          title: notificationData.title,
          body: notificationData.body,
        },
      };

      try {
        const resp = await getMessaging().send(message);
        console.log("Benachrichtigung gesendet:", resp);
      } catch (err) {
        console.error("Fehler beim Senden der Benachrichtigung:", err);
      }
    }
    return null;
  }
);

// Cloud Funktion, sobald der Status einer Zahlung geändert wird (akzeptiert/abgelehnt), wird eine Notification an den Debitor geschickt
export const notifyDebtorOnPaymentStatusChange = onDocumentUpdated(
  "transactions/{txId}/payments/{paymentId}",
  async (event) => {
    const before = event.data?.before.data();
    const after = event.data?.after.data();
    if (!before || !after) return null;

    if (before.status === after.status) return null;

    const txId = event.params.txId;

    const txSnap = await getFirestore()
      .collection("transactions")
      .doc(txId)
      .get();
    if (!txSnap.exists) return null;

    const transaction = txSnap.data() as {
      debtorId?: string;
      creditorId?: string;
      creditorName?: string;
      amount?: number;
    };

    if (!transaction.debtorId || !transaction.creditorId) return null;

    const debtorSnap = await getFirestore()
      .collection("users")
      .doc(transaction.debtorId)
      .get();

    if (!debtorSnap.exists) return null;

    const debtor = debtorSnap.data();
    const status = after.status;
    const accepted = status === "accepted";
    const rejected = status === "rejected";
    if (!accepted && !rejected) return null;
    const token = debtor?.fcmToken;

    const amount = transaction.amount;
    const formattedAmount = amount
      ? `${amount.toFixed(2).replace(".", ",")}€`
      : "ein Betrag";

    let debtorLanguage = DEFAULT_LANGUAGE;
    debtorLanguage = debtorSnap.data()?.languageCode || DEFAULT_LANGUAGE;

    // fetch the notification title and body from firestore

    let notificationKey = accepted
      ? "payment_request_accepted"
      : "payment_request_rejected";

    const notificationTemplateSnap = await getFirestore()
      .collection("notification_templates")
      .doc(notificationKey)
      .get();
    if (!notificationTemplateSnap.exists) {
      console.warn("No notification template found, exiting.");
      return null;
    }
    const notificationTemplate = notificationTemplateSnap.data();
    if (!notificationTemplate) {
      console.warn("No notification template data found, exiting.");
      return null;
    }

    let templateForLang = notificationTemplate[debtorLanguage];
    if (!templateForLang) {
      console.warn(
        `No template for language ${debtorLanguage}, falling back to default.`
      );
      // Optional: fallback auf DEFAULT_LANGUAGE
      if (notificationTemplate[DEFAULT_LANGUAGE]) {
        templateForLang = notificationTemplate[DEFAULT_LANGUAGE];
      } else {
        return null;
      }
    }

    let notificationBody = templateForLang.body;
    notificationBody = notificationBody
      .replace("{name}", transaction.creditorName)
      .replace("{amount}", formattedAmount);

    let notificationData = {
      title: templateForLang.title,
      body: notificationBody,
    };

    await getFirestore()
      .collection("users")
      .doc(transaction.debtorId)
      .collection("notifications")
      .add({
        title: notificationData.title,
        body: notificationData.body,
        type: accepted
          ? "payment_request_accepted"
          : "payment_request_rejected",
        read: false,
        createdAt: FieldValue.serverTimestamp(),
      });

    if (token) {
      const message = {
        token,
        notification: {
          title: notificationData.title,
          body: notificationData.body,
        },
      };

      try {
        const resp = await getMessaging().send(message);
        console.log("Push gesendet:", resp);
      } catch (err) {
        console.error("Fehler beim Push-Versand:", err);
      }
    }

    return null;
  }
);
