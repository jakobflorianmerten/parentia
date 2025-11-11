import * as admin from "firebase-admin";
import { setGlobalOptions } from "firebase-functions";
import {
  onDocumentCreated,
  onDocumentUpdated,
  onDocumentDeleted,
} from "firebase-functions/v2/firestore";
import { onSchedule } from "firebase-functions/v2/scheduler";
import { getFirestore, FieldValue, Timestamp } from "firebase-admin/firestore";
import { getMessaging } from "firebase-admin/messaging";

setGlobalOptions({ maxInstances: 10 });
admin.initializeApp();

const DEFAULT_LANGUAGE = "en";

// Cloud Funktion, sobald ein Meetup erstellt wurde, wird eine Notification an den Participant geschickt
export const sendMeetupNotification = onDocumentCreated(
  "meetups/{meetupId}",
  async (event) => {
    if (!event.data) {
      console.warn("No document data available, exiting.");
      return null;
    }
    const snap = event.data;
    const data = snap.data() as {
      initiatorId?: string;
      initiatorName?: string;
      participantId?: string;
      description?: string;
    };
    if (
      !data.initiatorName ||
      !data.initiatorId ||
      !data.participantId ||
      !data.description
    ) {
      return null;
    }

    const meetupId = event.params.meetupId;
    const db = getFirestore();
    const userSnap = await db.collection("users").doc(data.participantId).get();
    if (!userSnap.exists) return null;
    let userLanguage = DEFAULT_LANGUAGE;
    userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

    console.log("UserLanguage: " + userLanguage.toString());

    // fetch the notification title and body from firestore
    const notificationTemplateSnap = await db
      .collection("notification_templates")
      .doc("meetup_request")
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
      .replace("{initiatorName}", data.initiatorName)
      .replace("{description}", data.description);

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
      .doc(data.participantId)
      .collection("notifications")
      .add({
        title: notificationData.title,
        body: notificationData.body,
        type: "meetup_request",
        read: false,
        meetupId: meetupId,
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

// Cloud Funktion, sobald ein Meetup akzeptiert, oder abgelehnt wurde, wird eine Notification an den Initiator geschickt
export const sendMeetupResponseNotification = onDocumentUpdated(
  "meetups/{meetupId}",
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
        participantName?: string;
        participantId?: string;
        description?: string;
        status?: string;
        initiatorId?: string;
      };

      if (
        !data.participantName ||
        !data.participantId ||
        !data.description ||
        !data.status ||
        !data.initiatorId
      ) {
        return null;
      }
      const meetupId = event.params.meetupId;
      const userSnap = await getFirestore()
        .collection("users")
        .doc(data.initiatorId)
        .get();
      if (!userSnap.exists) return null;

      let userLanguage = DEFAULT_LANGUAGE;
      userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

      let notificationKey =
        data.status === "active"
          ? "meetup_accepted"
          : "meetup_rejected";

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
        .replace("{participantName}", data.participantName)
        .replace("{description}", data.description);

      let notificationData = {
        title: templateForLang.title,
        body: notificationBody,
      };

      // Insert Message entry in "notifications" collection
      await getFirestore()
        .collection("users")
        .doc(data.initiatorId)
        .collection("notifications")
        .add({
          title: notificationData.title,
          body: notificationData.body,
          type:
            data.status === "active"
              ? "meetup_accepted"
              : "meetup_rejected",
          read: false,
          meetupId: meetupId,
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

// Cloud Function: Send notification when a meetup is deleted
export const sendMeetupDeletedNotification = onDocumentDeleted(
  "meetups/{meetupId}",
  async (event) => {
    if (!event.data) {
      console.warn("No document data available, exiting.");
      return null;
    }

    const snap = event.data;
    const data = snap.data() as {
      initiatorId?: string;
      initiatorName?: string;
      participantId?: string;
      participantName?: string;
      description?: string;
    };

    if (
      !data.initiatorId ||
      !data.participantId ||
      !data.initiatorName ||
      !data.participantName ||
      !data.description
    ) {
      return null;
    }

    const db = getFirestore();

    // Send notification to both participants
    const participants = [
      { id: data.initiatorId, name: data.participantName },
      { id: data.participantId, name: data.initiatorName },
    ];

    for (const participant of participants) {
      const userSnap = await db.collection("users").doc(participant.id).get();
      if (!userSnap.exists) continue;

      const userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

      const notificationTemplateSnap = await db
        .collection("notification_templates")
        .doc("meetup_deleted")
        .get();

      if (!notificationTemplateSnap.exists) {
        console.warn("No notification template found for meetup_deleted");
        continue;
      }

      const notificationTemplate = notificationTemplateSnap.data();
      if (!notificationTemplate) continue;

      let templateForLang = notificationTemplate[userLanguage] ||
                            notificationTemplate[DEFAULT_LANGUAGE];
      if (!templateForLang) continue;

      let notificationBody = templateForLang.body
        .replace("{partnerName}", participant.name)
        .replace("{description}", data.description);

      await db
        .collection("users")
        .doc(participant.id)
        .collection("notifications")
        .add({
          title: templateForLang.title,
          body: notificationBody,
          type: "meetup_deleted",
          read: false,
          createdAt: FieldValue.serverTimestamp(),
        });

      const token = userSnap.data()?.fcmToken;
      if (token) {
        try {
          await getMessaging().send({
            token,
            notification: {
              title: templateForLang.title,
              body: notificationBody,
            },
          });
          console.log("Meetup deleted notification sent to:", participant.id);
        } catch (err) {
          console.error("Error sending notification:", err);
        }
      }
    }

    return null;
  }
);

// Cloud Function: Send notification when a meetup is edited (status changes to pending_changes)
export const sendMeetupEditedNotification = onDocumentUpdated(
  "meetups/{meetupId}",
  async (event) => {
    const before = event.data?.before.data();
    const after = event.data?.after.data();
    if (!before || !after) return null;

    // Check if status changed to pending_changes OR if changes were accepted/rejected
    const statusChangedToPendingChanges =
      before.status !== "pending_changes" && after.status === "pending_changes";

    const changesAccepted =
      before.status === "pending_changes" && after.status === "active";

    const changesRejected =
      before.status === "pending_changes" &&
      after.status !== "active" &&
      after.status !== "pending_changes";

    if (!statusChangedToPendingChanges && !changesAccepted && !changesRejected) {
      return null;
    }

    const data = after as {
      initiatorId?: string;
      initiatorName?: string;
      participantId?: string;
      participantName?: string;
      description?: string;
      editedBy?: string;
    };

    if (
      !data.initiatorId ||
      !data.participantId ||
      !data.initiatorName ||
      !data.participantName ||
      !data.description
    ) {
      return null;
    }

    const db = getFirestore();
    const meetupId = event.params.meetupId;

    // Determine notification type and recipient
    let notificationType: string;
    let recipientId: string;
    let editorName: string;

    if (statusChangedToPendingChanges && data.editedBy) {
      notificationType = "meetup_edited";
      // Send to the person who did NOT edit
      recipientId = data.editedBy === data.initiatorId ?
                    data.participantId : data.initiatorId;
      editorName = data.editedBy === data.initiatorId ?
                   data.initiatorName : data.participantName;
    } else if (changesAccepted && data.editedBy) {
      notificationType = "meetup_changes_accepted";
      // Send to the person who edited
      recipientId = data.editedBy;
      editorName = data.editedBy === data.initiatorId ?
                   data.participantName : data.initiatorName;
    } else if (changesRejected && data.editedBy) {
      notificationType = "meetup_changes_rejected";
      // Send to the person who edited
      recipientId = data.editedBy;
      editorName = data.editedBy === data.initiatorId ?
                   data.participantName : data.initiatorName;
    } else {
      return null;
    }

    const userSnap = await db.collection("users").doc(recipientId).get();
    if (!userSnap.exists) return null;

    const userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

    const notificationTemplateSnap = await db
      .collection("notification_templates")
      .doc(notificationType)
      .get();

    if (!notificationTemplateSnap.exists) {
      console.warn(`No notification template found for ${notificationType}`);
      return null;
    }

    const notificationTemplate = notificationTemplateSnap.data();
    if (!notificationTemplate) return null;

    let templateForLang = notificationTemplate[userLanguage] ||
                          notificationTemplate[DEFAULT_LANGUAGE];
    if (!templateForLang) return null;

    let notificationBody = templateForLang.body
      .replace("{partnerName}", editorName)
      .replace("{description}", data.description);

    await db
      .collection("users")
      .doc(recipientId)
      .collection("notifications")
      .add({
        title: templateForLang.title,
        body: notificationBody,
        type: notificationType,
        read: false,
        meetupId: meetupId,
        createdAt: FieldValue.serverTimestamp(),
      });

    const token = userSnap.data()?.fcmToken;
    if (token) {
      try {
        await getMessaging().send({
          token,
          notification: {
            title: templateForLang.title,
            body: notificationBody,
          },
        });
        console.log(`${notificationType} notification sent to:`, recipientId);
      } catch (err) {
        console.error("Error sending notification:", err);
      }
    }

    return null;
  }
);

// Cloud Function: Complete expired meetups (runs daily at 2:00 UTC)
export const completeExpiredMeetups = onSchedule(
  {
    schedule: "0 2 * * *", // Every day at 2:00 AM UTC
    timeZone: "UTC",
  },
  async (event) => {
    console.log("Running completeExpiredMeetups function");
    const db = getFirestore();
    const now = Timestamp.now();

    try {
      // Query all active meetups where meetupDate is in the past
      const expiredMeetupsSnapshot = await db
        .collection("meetups")
        .where("status", "==", "active")
        .where("meetupDate", "<", now)
        .get();

      if (expiredMeetupsSnapshot.empty) {
        console.log("No expired meetups found");
        return;
      }

      console.log(`Found ${expiredMeetupsSnapshot.size} expired meetups to complete`);

      // Update all expired meetups to completed status
      const batch = db.batch();
      expiredMeetupsSnapshot.docs.forEach((doc) => {
        batch.update(doc.ref, { status: "completed" });
      });

      await batch.commit();
      console.log(`Successfully completed ${expiredMeetupsSnapshot.size} expired meetups`);
    } catch (error) {
      console.error("Error completing expired meetups:", error);
    }
  }
);

// Cloud Function: Send daily meetup reminders (runs daily at 9:00 UTC)
export const sendDailyMeetupReminders = onSchedule(
  {
    schedule: "0 9 * * *", // Every day at 9:00 AM UTC
    timeZone: "UTC",
  },
  async (event) => {
    console.log("Running sendDailyMeetupReminders function");
    const db = getFirestore();
    const now = Timestamp.now();

    // Calculate time window: 24-25 hours from now
    const tomorrow = new Date(now.toMillis() + 24 * 60 * 60 * 1000);
    const tomorrowEnd = new Date(now.toMillis() + 25 * 60 * 60 * 1000);

    try {
      // Query active meetups happening in the next 24-25 hours that haven't been reminded yet
      const upcomingMeetupsSnapshot = await db
        .collection("meetups")
        .where("status", "==", "active")
        .where("meetupDate", ">=", Timestamp.fromDate(tomorrow))
        .where("meetupDate", "<=", Timestamp.fromDate(tomorrowEnd))
        .get();

      if (upcomingMeetupsSnapshot.empty) {
        console.log("No upcoming meetups found for reminders");
        return;
      }

      console.log(`Found ${upcomingMeetupsSnapshot.size} meetups to send reminders for`);

      for (const meetupDoc of upcomingMeetupsSnapshot.docs) {
        const meetupData = meetupDoc.data() as {
          initiatorId?: string;
          initiatorName?: string;
          participantId?: string;
          participantName?: string;
          description?: string;
          meetupDate?: Timestamp;
          reminderSent?: boolean;
        };

        // Skip if reminder already sent
        if (meetupData.reminderSent) {
          console.log(`Reminder already sent for meetup ${meetupDoc.id}`);
          continue;
        }

        if (
          !meetupData.initiatorId ||
          !meetupData.participantId ||
          !meetupData.initiatorName ||
          !meetupData.participantName ||
          !meetupData.description ||
          !meetupData.meetupDate
        ) {
          console.warn(`Incomplete meetup data for ${meetupDoc.id}`);
          continue;
        }

        // Send reminder to both participants
        const participants = [
          { id: meetupData.initiatorId, partnerName: meetupData.participantName },
          { id: meetupData.participantId, partnerName: meetupData.initiatorName },
        ];

        for (const participant of participants) {
          try {
            // Get user data for language preference
            const userSnap = await db.collection("users").doc(participant.id).get();
            if (!userSnap.exists) {
              console.warn(`User ${participant.id} not found`);
              continue;
            }

            const userLanguage = userSnap.data()?.languageCode || DEFAULT_LANGUAGE;

            // Fetch notification template
            const notificationTemplateSnap = await db
              .collection("notification_templates")
              .doc("meetup_reminder")
              .get();

            if (!notificationTemplateSnap.exists) {
              console.warn("No notification template found for meetup_reminder");
              continue;
            }

            const notificationTemplate = notificationTemplateSnap.data();
            if (!notificationTemplate) continue;

            let templateForLang =
              notificationTemplate[userLanguage] ||
              notificationTemplate[DEFAULT_LANGUAGE];

            if (!templateForLang) {
              console.warn(`No template found for language ${userLanguage}`);
              continue;
            }

            // Format the date
            const meetupDate = meetupData.meetupDate.toDate();
            const dateFormatter = new Intl.DateTimeFormat(
              userLanguage === "de" ? "de-DE" : "en-US",
              {
                weekday: "long",
                year: "numeric",
                month: "long",
                day: "numeric",
                hour: "2-digit",
                minute: "2-digit",
              }
            );
            const formattedDate = dateFormatter.format(meetupDate);

            // Replace placeholders
            let notificationBody = templateForLang.body
              .replace("{partnerName}", participant.partnerName)
              .replace("{description}", meetupData.description)
              .replace("{date}", formattedDate);

            // Save notification to Firestore
            await db
              .collection("users")
              .doc(participant.id)
              .collection("notifications")
              .add({
                title: templateForLang.title,
                body: notificationBody,
                type: "meetup_reminder",
                read: false,
                meetupId: meetupDoc.id,
                createdAt: FieldValue.serverTimestamp(),
              });

            console.log(`Notification saved for user ${participant.id}`);

            // Send FCM push notification
            const token = userSnap.data()?.fcmToken;
            if (token) {
              try {
                await getMessaging().send({
                  token,
                  notification: {
                    title: templateForLang.title,
                    body: notificationBody,
                  },
                });
                console.log(`FCM notification sent to user ${participant.id}`);
              } catch (err) {
                console.error(`Error sending FCM to ${participant.id}:`, err);
              }
            }
          } catch (err) {
            console.error(`Error sending reminder to ${participant.id}:`, err);
          }
        }

        // Mark reminder as sent
        await meetupDoc.ref.update({ reminderSent: true });
        console.log(`Marked reminder as sent for meetup ${meetupDoc.id}`);
      }

      console.log("Finished sending meetup reminders");
    } catch (error) {
      console.error("Error in sendDailyMeetupReminders:", error);
    }
  }
);
