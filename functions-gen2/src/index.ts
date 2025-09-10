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

    const dataAmount: string = data.amount.toFixed(2).replace(".", ",");
    await db
      .collection("users")
      .doc(data.debtorId)
      .collection("notifications")
      .add({
        title: `${data.creditorName} hat die eine Anfrage für eine Transaction geschickt`,
        body: `Du hast eine neue Transaction von ${data.creditorName} über ${dataAmount}€ erhalten`,
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
        title: "Transaktionsanfrage",
        body: `${data.creditorName} hat die eine Anfrage für eine Transaction geschickt`,
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

      let messageTitle = "";
      let messageBody = "";

      // Insert Message entry in "notifications" collection
      await getFirestore()
        .collection("users")
        .doc(data.creditorId)
        .collection("notifications")
        .add({
          title: `Transaction von ${data.debtorName} wurde ${
            data.status === "active" ? "akzeptiert" : "abgelehnt"
          }`,
          body: `Die Transaction von ${data.debtorName} über ${data.amount
            .toFixed(2)
            .replace(".", ",")}€ wurde ${
            data.status === "active" ? "akzeptiert" : "abgelehnt"
          }.`,
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

      if (data.status === "active") {
        messageTitle = 'Transaktion akzeptiert';
        messageBody = `Deine Transaction von ${
          data.debtorName
        } über ${data.amount.toFixed(2).replace(".", ",")}€ wurde akzeptiert.`;
      } else if (data.status === "rejected") {
        messageTitle = 'Transaktion abgelehnt';
        messageBody = `Deine Transaction von ${
          data.debtorName
        } über ${data.amount.toFixed(2).replace(".", ",")}€ wurde abgelehnt.`;
      }

      const message = {
        token,
        notification: {
          title: messageTitle,
          body: messageBody,
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

    const creditor = creditorSnap.data();
    const token = creditor?.fcmToken;

    // Benachrichtigungstext vorbereiten
    const amountPaid = transaction.amount;
    const formattedAmount = amountPaid
      ? `${amountPaid.toFixed(2).replace(".", ",")}€`
      : "ein Betrag";

    const messageTitle = "Neue Zahlungsanfrage erhalten";
    const messageBody = `Du hast eine Zahlung von ${transaction.debtorName} über ${formattedAmount} erhalten. Bitte reagiere auf die Zahlung, indem du sie ablehnst oder akzeptierst.`;

    // Notification-Dokument in Subcollection hinzufügen
    await getFirestore()
      .collection("users")
      .doc(transaction.creditorId)
      .collection("notifications")
      .add({
        title: messageTitle,
        body: messageBody,
        type: "payment_request",
        read: false,
        createdAt: FieldValue.serverTimestamp(),
      });

    if (token) {
      const message = {
        token,
        notification: {
          title: messageTitle,
          body: messageBody,
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
    const token = debtor?.fcmToken;

    const status = after.status;
    const accepted = status === "accepted";
    const rejected = status === "rejected";
    if (!accepted && !rejected) return null;

    const amount = transaction.amount;
    const formattedAmount = amount
      ? `${amount.toFixed(2).replace(".", ",")}€`
      : "ein Betrag";
    const creditorName = transaction.creditorName || "der Empfänger";

    const messageTitle = `Zahlung wurde ${
      accepted ? "akzeptiert" : "abgelehnt"
    }`;
    const messageBody = `Deine Zahlung über ${formattedAmount} wurde von ${creditorName} ${
      accepted ? "akzeptiert" : "abgelehnt"
    }.`;

    await getFirestore()
      .collection("users")
      .doc(transaction.debtorId)
      .collection("notifications")
      .add({
        title: messageTitle,
        body: messageBody,
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
          title: messageTitle,
          body: messageBody,
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

