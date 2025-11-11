# Cloud Functions Deployment Guide

## Overview

This directory contains Firebase Cloud Functions (Generation 2) for the Parentia app.

## New Functions Added

### 1. `completeExpiredMeetups`
- **Schedule:** Daily at 2:00 AM UTC
- **Purpose:** Automatically marks meetups as `completed` when their date is in the past
- **Trigger:** Scheduled (cron)
- **Benefits:** Keeps the home screen clean by moving expired meetups to history

### 2. `sendDailyMeetupReminders`
- **Schedule:** Daily at 9:00 AM UTC
- **Purpose:** Sends reminder notifications to both participants 24 hours before a meetup
- **Trigger:** Scheduled (cron)
- **Features:**
  - Sends to both initiator and participant
  - Multi-language support (English/German)
  - Includes partner name, description, and formatted date/time
  - Prevents duplicate reminders with `reminderSent` flag
  - In-app notification + FCM push notification

## Deployment Steps

### Step 1: Build the Functions

```bash
cd functions-gen2
npm install
npm run build
```

### Step 2: Deploy to Firebase

Deploy all functions:
```bash
firebase deploy --only functions
```

Or deploy specific functions:
```bash
firebase deploy --only functions:completeExpiredMeetups,functions:sendDailyMeetupReminders
```

### Step 3: Create the Notification Template

The reminder function requires a notification template in Firestore. You have two options:

**Option A: Run the setup script (recommended)**

```bash
cd functions-gen2
npm run build
node lib/scripts/add-meetup-reminder-template.js
```

**Option B: Manually add to Firestore**

1. Go to Firebase Console → Firestore Database
2. Navigate to the `notification_templates` collection
3. Create a new document with ID: `meetup_reminder`
4. Add the following fields:

```json
{
  "en": {
    "title": "Meetup Reminder",
    "body": "Tomorrow you have a meetup with {partnerName}! {description} - {date}"
  },
  "de": {
    "title": "Meetup Erinnerung",
    "body": "Morgen hast du ein Meetup mit {partnerName}! {description} - {date}"
  }
}
```

### Step 4: Verify Deployment

Check the Firebase Console:
1. Go to Functions → Logs
2. Wait for the scheduled times (2:00 AM and 9:00 AM UTC)
3. Check logs for function execution

Or trigger manually for testing:
```bash
# Trigger the functions via Firebase Console
# Functions → Select function → Test
```

## Flutter App Changes

The following changes have been made to the Flutter app:

1. **NotificationType Enum** - Added `meetup_reminder` type
2. **File:** `lib/features/account/domain/entities/notification.dart`

No additional Flutter changes are required - the app will automatically handle the new notification type.

## Database Schema Changes

### Meetups Collection
A new optional field has been added to meetup documents:

- `reminderSent` (boolean, optional): Tracks whether a reminder has been sent for this meetup

This field is automatically added by the Cloud Function and prevents duplicate reminders.

## Testing

### Local Testing

You can test the functions locally using the Firebase Emulator Suite:

```bash
firebase emulators:start --only functions,firestore
```

### Manual Testing in Production

To test the reminder function without waiting 24 hours:

1. Create a test meetup with `meetupDate` set to ~24 hours from now
2. Wait for 9:00 AM UTC (or manually trigger the function)
3. Check that both participants receive notifications

## Cost Considerations

**Scheduled Functions:**
- 2 invocations per day (2 functions × 1 execution each)
- ~60 invocations per month

**Firebase Free Tier:**
- 2 million invocations per month
- 400,000 GB-seconds compute time

**Expected Cost:** $0 (well within free tier limits)

## Monitoring

Monitor function execution in Firebase Console:
- Functions → Logs
- Look for:
  - "Running completeExpiredMeetups function"
  - "Running sendDailyMeetupReminders function"
  - Success messages or errors

## Troubleshooting

### Functions not triggering

1. Check Firebase Console → Functions to ensure they're deployed
2. Verify the schedule is correct (cron syntax)
3. Check function logs for errors

### Reminders not sending

1. Verify notification template exists in Firestore
2. Check that meetups have `status: "active"`
3. Verify `meetupDate` is within 24-25 hours
4. Check user documents have `fcmToken` and `languageCode`

### Duplicate reminders

The function uses `reminderSent` flag to prevent duplicates. If you see duplicates:
1. Check that the flag is being set correctly
2. Verify no other process is clearing this flag

## Rollback

If you need to rollback:

```bash
# Deploy previous version
firebase deploy --only functions

# Or delete specific functions
firebase functions:delete completeExpiredMeetups
firebase functions:delete sendDailyMeetupReminders
```

## Support

For issues or questions, check:
- Firebase Console → Functions → Logs
- Function source code: `functions-gen2/src/index.ts`
- Notification templates: Firestore → `notification_templates` collection
