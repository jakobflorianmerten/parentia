import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/custom_icon_button.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/information_widget_with_child.dart';
import 'package:parentia/core/presentation/widgets/user_widget.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/meetup/application/blocs/meetup/meetup_bloc.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/features/meetup/presentation/widgets/edit_date_widget.dart';
import 'package:parentia/features/meetup/presentation/widgets/edit_description_widget.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MeetupDetailScreen extends StatelessWidget {
  final Meetup meetup;
  const MeetupDetailScreen({super.key, required this.meetup});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final DateTime date = meetup.meetupDate;
    final String formattedDate = DateFormat('dd.MM.yyyy').format(date);
    return BlocConsumer<MeetupBloc, MeetupState>(
      listener: (context, state) {
        if (state is MeetupStateSuccess &&
            state.meetupId == meetup.id) {
          MessageService.show(
            title: AppLocalizations.of(
              context,
            )!.success_meetupCreatedTitle,
            message: AppLocalizations.of(
              context,
            )!.success_meetupCreatedDescription,
            type: MessageType.success,
          );
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        if (state is MeetupStateLoading &&
            state.meetupId == meetup.id)
          return SizedBox(
            height: screenHeight * 0.8,
            child: Center(child: CustomLoadingAnimationElement()),
          );

        return SafeArea(
          child: Container(
            height: screenHeight * 0.6,
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
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
                            profilePicture:
                                meetup.initiatorProfilePicture,
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
                        addVerticalSpace(30)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CustomIconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    onPressed: () {
                      _showMoreOptionsOverlay(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showMoreOptionsOverlay(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.5),
      builder: (dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (meetup.status == MeetupStatus.active) ...[
                CustomClickedElement(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.description,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        addHorizontalSpace(12),
                        Text(
                          AppLocalizations.of(context)!.editDescription,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                    Navigator.of(context).pop();
                    _showEditDescriptionModal(context);
                  },
                ),
                addVerticalSpace(12),
                CustomClickedElement(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        addHorizontalSpace(12),
                        Text(
                          AppLocalizations.of(context)!.editDate,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                    Navigator.of(context).pop();
                    _showEditDateModal(context);
                  },
                ),
                addVerticalSpace(12),
              ],
              CustomClickedElement(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      addHorizontalSpace(12),
                      Text(
                        AppLocalizations.of(context)!.deleteMeetup,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  _showDeleteConfirmationDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditDescriptionModal(BuildContext context) {
    final meetupBloc = BlocProvider.of<MeetupBloc>(context);
    WoltModalSheet.show<void>(
      context: context,
      useRootNavigator: true,
      pageListBuilder: (modalSheetContext) {
        return [
          WoltModalSheetPage(
            child: BlocProvider.value(
              value: meetupBloc,
              child: EditDescriptionWidget(
                meetupId: meetup.id,
                initialDescription: meetup.description,
                currentDate: meetup.meetupDate,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.surface,
            surfaceTintColor: Theme.of(context).colorScheme.surface,
          ),
        ];
      },
      modalTypeBuilder: (context) {
        return const WoltBottomSheetType(
          closeProgressThreshold: 0.8,
          dismissDirection: WoltModalDismissDirection.down,
        );
      },
    );
  }

  void _showEditDateModal(BuildContext context) {
    final meetupBloc = BlocProvider.of<MeetupBloc>(context);
    WoltModalSheet.show<void>(
      context: context,
      useRootNavigator: true,
      pageListBuilder: (modalSheetContext) {
        return [
          WoltModalSheetPage(
            child: BlocProvider.value(
              value: meetupBloc,
              child: EditDateWidget(
                meetupId: meetup.id,
                initialDate: meetup.meetupDate,
                currentDescription: meetup.description,
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.surface,
            surfaceTintColor: Theme.of(context).colorScheme.surface,
          ),
        ];
      },
      modalTypeBuilder: (context) {
        return const WoltBottomSheetType(
          closeProgressThreshold: 0.8,
          dismissDirection: WoltModalDismissDirection.down,
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.5),
      builder: (dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.confirmDeleteMeetup,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              addVerticalSpace(12),
              Text(
                AppLocalizations.of(context)!.confirmDeleteMeetupDescription,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              addVerticalSpace(24),
              Row(
                children: [
                  Expanded(
                    child: CustomClickedElement(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.cancel,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      onPressed: () => Navigator.of(dialogContext).pop(),
                    ),
                  ),
                  addHorizontalSpace(12),
                  Expanded(
                    child: CustomClickedElement(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.delete,
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                        BlocProvider.of<MeetupBloc>(context).add(
                          MeetupEvent.deleteMeetup(meetup.id),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
