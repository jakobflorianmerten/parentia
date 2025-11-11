import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/presentation/delegates/sliding_title_header_delegate.dart';
import 'package:parentia/features/account/presentation/widgets/meetup_history_list_element.dart';
import 'package:parentia/features/meetup/application/blocs/meetup_history/meetup_history_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class MeetupHistoryScreen extends StatelessWidget {
  const MeetupHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<MeetupHistoryBloc>()
            ..add(MeetupHistoryEvent.load()),

      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child:
                  BlocConsumer<MeetupHistoryBloc, MeetupHistoryState>(
                    listener: (context, state) {
                      if (state is MeetupHistoryStateError) {
                        MessageService.show( title: AppLocalizations.of(context)!.error_defaultMessageTitle, message: AppLocalizations.of(context)!.error_defaultMessageDescription, type: MessageType.error);
                      }
                    },
                    builder: (context, state) {
                      if (state is MeetupHistoryStateLoading) {
                        return Center(child: CustomLoadingAnimationElement());
                      }
                      if (state is MeetupHistoryStateSuccess) {
                        return CustomScrollView(
                          slivers: [
                            SliverPadding(
                              padding: EdgeInsetsGeometry.all(20),
                              sliver: SliverPersistentHeader(
                                floating: true,
                                delegate: SlidingTitleHeaderDelegate(
                                  title: AppLocalizations.of(context)!.meetupHistory,
                                ),
                              ),
                            ),
                            SliverPadding(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 20,
                              ),
                              sliver: state.meetups.length != 0
                                  ? SliverList.separated(
                                      itemCount: state.meetups.length,
                                      itemBuilder: (context, index) {
                                        return MeetupHistoryListElement(
                                          meetup:
                                              state.meetups[index],
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          addVerticalSpace(20),
                                    )
                                  : SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(context)!.noMeetups
                                      ),
                                    ),
                            ),
                            SliverToBoxAdapter(
                              child: addVerticalSpace(30)
                            )
                          ],
                        );
                      }
                      return Container();
                    },
                  ),
            ),
          );
        },
      ),
    );
  }
}
