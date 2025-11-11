import * as admin from "firebase-admin";
import { getFirestore } from "firebase-admin/firestore";

// Initialize Firebase Admin SDK
admin.initializeApp();

const db = getFirestore();

async function addMeetupReminderTemplate() {
  try {
    const templateData = {
      en: {
        title: "Meetup Reminder",
        body: "Tomorrow you have a meetup with {partnerName}! {description} - {date}",
      },
      de: {
        title: "Meetup Erinnerung",
        body: "Morgen hast du ein Meetup mit {partnerName}! {description} - {date}",
      },
    };

    await db
      .collection("notification_templates")
      .doc("meetup_reminder")
      .set(templateData);

    console.log("Successfully added meetup_reminder notification template!");
    console.log("Template data:", JSON.stringify(templateData, null, 2));
  } catch (error) {
    console.error("Error adding notification template:", error);
    process.exit(1);
  }

  process.exit(0);
}

addMeetupReminderTemplate();
