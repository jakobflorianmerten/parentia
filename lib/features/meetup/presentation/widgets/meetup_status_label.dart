import 'package:flutter/material.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/l10n/app_localizations.dart';

class MeetupStatusLabel extends StatelessWidget {
  final MeetupStatus status;
  const MeetupStatusLabel({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    bool isPending = status == MeetupStatus.pending || status == MeetupStatus.pendingChanges;
    late String displayText;

    switch (status) {
      case MeetupStatus.pending:
        displayText = AppLocalizations.of(context)!.meetup_status_pending;
        break;
      case MeetupStatus.active:
        displayText = AppLocalizations.of(context)!.meetup_status_active;
        break;
      case MeetupStatus.rejected:
        displayText = AppLocalizations.of(context)!.meetup_status_rejected;
        break;
      case MeetupStatus.completed:
        displayText = AppLocalizations.of(context)!.meetup_status_completed;
        break;
      case MeetupStatus.pendingChanges:
        displayText = AppLocalizations.of(context)!.meetup_status_pending_changes;
        break;
    }

    return Text(
      displayText,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: isPending == true
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
