import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/profile_picture_or_name.dart';
import 'package:parentia/core/presentation/widgets/two_action_buttons.dart';
import 'package:parentia/features/meetup/application/blocs/meetup/meetup_bloc.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';
import 'package:parentia/features/meetup/presentation/widgets/meetup_status_label.dart';
import 'package:parentia/l10n/app_localizations.dart';

class CurrentMeetupElement extends StatelessWidget {
  final Meetup meetup;
  const CurrentMeetupElement({super.key, required this.meetup});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CustomClickedElement(
              isNotActive: meetup.status == MeetupStatus.rejected,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(15.0),
                child: BlocBuilder<MeetupBloc, MeetupState>(
                  builder: (context, state) {
                    if (state is MeetupStateLoading &&
                        state.meetupId == meetup.id) {
                      return Center(child: CustomLoadingAnimationElement());
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: ProfilePictureOrName(
                                    profilePicture:
                                        meetup.isInitiator == true
                                        ? meetup.participantProfilePicture
                                        : meetup.initiatorProfilePicture,
                                    name: meetup.isInitiator == true
                                        ? meetup.participantName
                                        : meetup.initiatorName,
                                  ),
                                ),
                                addHorizontalSpace(15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      meetup.isInitiator == true
                                          ? meetup.participantName
                                          : meetup.initiatorName,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      meetup.description.length > 30
                                          ? meetup.description.substring(0, 30) + '...'
                                          : meetup.description,
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        addVerticalSpace(10),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.white.withValues(alpha: 0.3),
                        ),
                        addVerticalSpace(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MeetupStatusLabel(
                              status: meetup.status,
                            ),
                            meetup.status == MeetupStatus.active ||
                                    meetup.status == MeetupStatus.pending ||
                                    meetup.status == MeetupStatus.pendingChanges
                                ? Icon(Icons.arrow_forward_ios, size: 10)
                                : Container(),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              onPressed: () {
                showMeetupModalBottomSheet(context, meetup);
              },
            ),
            // when the meetup is not active and the user is the participant, show the two buttons where the user can react to the meetup
            meetup.isInitiator == false &&
                    meetup.status == MeetupStatus.pending
                ? Column(
                    children: [
                      addVerticalSpace(15),
                      TwoActionButtons(
                        textLeft: AppLocalizations.of(context)!.reject,
                        textRight: AppLocalizations.of(context)!.accept,
                        onPressedLeft: () {
                          BlocProvider.of<MeetupBloc>(
                            context,
                          ).add(
                            MeetupEvent.rejectMeetup(
                              meetup.id,
                            ),
                          );
                        },
                        onPressedRight: () {
                          BlocProvider.of<MeetupBloc>(
                            context,
                          ).add(
                            MeetupEvent.acceptMeetup(
                              meetup.id,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                : Container(),
            // when the meetup has pending changes and the current user is NOT the one who edited it
            meetup.status == MeetupStatus.pendingChanges &&
                    meetup.editedBy != null &&
                    meetup.editedBy != (meetup.isInitiator ? meetup.initiatorId : meetup.participantId)
                ? Column(
                    children: [
                      addVerticalSpace(15),
                      TwoActionButtons(
                        textLeft: AppLocalizations.of(context)!.rejectChanges,
                        textRight: AppLocalizations.of(context)!.acceptChanges,
                        onPressedLeft: () {
                          BlocProvider.of<MeetupBloc>(
                            context,
                          ).add(
                            MeetupEvent.rejectChanges(
                              meetup.id,
                            ),
                          );
                        },
                        onPressedRight: () {
                          BlocProvider.of<MeetupBloc>(
                            context,
                          ).add(
                            MeetupEvent.acceptChanges(
                              meetup.id,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                : Container(),
          ],
        );
      },
    );
  }
}
