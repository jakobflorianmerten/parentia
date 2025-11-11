import * as admin from "firebase-admin";
import { auth } from "firebase-functions/v1";
import { getFirestore } from "firebase-admin/firestore";
import { getStorage } from "firebase-admin/storage";


admin.initializeApp();
// Cloud Function to delete data from storage and cloud firestore when user is deleted from auth
export const deleteDataWhenUserDeleteFromAuth = auth.user().onDelete(async (user) => {
  const { uid } = user;
  try {
    const userDocSnap = await getFirestore().collection("users").doc(uid).get();
    if (!userDocSnap.exists) {
      console.log("user does not exist");
      return;
    }
    const userData = userDocSnap.data();
    if (userData == undefined || userData == null) return;
    const profileImagePath = userData.profileImage;

    if (profileImagePath && profileImagePath != "") {
      const filePath = `users/${uid}/profile`;
      const bucket = getStorage().bucket();
      const file = bucket.file(filePath);

      try {
        await file.delete();
      } catch (e: any) {
        if (e.code === 404) {
          console.warn(
            `Profilbild nicht im Storage gefunden: ${filePath}.`
          );
        } else {
          console.error(
            `Fehler beim Löschen des Profilbilds aus Storage für UID ${uid}:`,
            e
          );
        }
      }
    } else {
      console.log(`Kein Profilbild-Pfad im Dokument für UID ${uid} gefunden.`);
    }
    await getFirestore().collection('users').doc(uid).delete();
    console.log(`Dokument mit UID ${uid} wurde erfolgreich gelöscht.`);
  } catch (e) {
    console.log(e);
  }
});
