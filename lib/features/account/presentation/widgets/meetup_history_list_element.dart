import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/widgets/custom_long_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/information_widget_with_child.dart';
import 'package:parentia/core/presentation/widgets/user_widget.dart';
import 'package:parentia/features/meetup/application/blocs/meetup_history/meetup_history_bloc.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/l10n/app_localizations.dart';

class MeetupHistoryListElement extends StatelessWidget {
  final Meetup meetup;
  const MeetupHistoryListElement({super.key, required this.meetup});

  @override
  Widget build(BuildContext context) {
    final DateTime date = meetup.meetupDate;
    final String formattedDate = DateFormat('dd.MM.yyyy').format(date);
    final parentContext = context;


    return CustomLongClickedElement(
      onPressed: () {
        showAdaptiveActionSheet(
          context: context,
          androidBorderRadius: 30,
          actions: <BottomSheetAction>[
            BottomSheetAction(
              title: Text(AppLocalizations.of(context)!.delete),
              onPressed: (context) {
                BlocProvider.of<MeetupHistoryBloc>(parentContext).add(MeetupHistoryEvent.deleteMeetup(meetup.id));
                Navigator.of(context).pop();
              },
            ),
          ],
          cancelAction: CancelAction(
            title: Text(AppLocalizations.of(context)!.cancel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InformationWidgetWithChild(
              label: AppLocalizations.of(context)!.participant.toUpperCase(),
              child: UserWidget(
                profilePicture: meetup.participantProfilePicture,
                name: meetup.isInitiator == false
                    ? meetup.participantName + ' (Du)'
                    : meetup.participantName,
              ),
            ),
            addVerticalSpace(40),
            InformationWidgetWithChild(
              label: AppLocalizations.of(context)!.initiator.toUpperCase(),
              child: UserWidget(
                profilePicture: meetup.initiatorProfilePicture,
                name: meetup.isInitiator == true
                    ? meetup.initiatorName + ' (Du)'
                    : meetup.initiatorName,
              ),
            ),
            addVerticalSpace(40),
            InformationWidgetWithChild(
              label: AppLocalizations.of(context)!.description.toUpperCase(),
              child: Text(
                meetup.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            addVerticalSpace(40),
            InformationWidgetWithChild(
              label: AppLocalizations.of(context)!.meetupDate.toUpperCase(),
              child: Text(
                formattedDate,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
