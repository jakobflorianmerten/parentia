import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/blocs/qr_code_user_bloc/qr_code_user_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/presentation/delegates/app_bar_delegate.dart';
import 'package:parentia/features/meetup/application/blocs/load_meetups/load_meetups_bloc.dart';
import 'package:parentia/features/meetup/application/blocs/meetup/meetup_bloc.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';
import 'package:parentia/features/meetup/presentation/widgets/current_meetup_element.dart';
import 'package:parentia/l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  final String? meetupPartnerUid;
  const HomeScreen({super.key, this.meetupPartnerUid});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    if (widget.meetupPartnerUid != null &&
        widget.meetupPartnerUid != '') {
      BlocProvider.of<QrCodeUserBloc>(
        context,
      ).add(QrCodeUserEvent.loadUser(widget.meetupPartnerUid!));
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<LoadMeetupsBloc>()
            ..add(LoadMeetupsEvent.loadMeetups()),
      child: Builder(
        builder: (context) {
          return BlocListener<MeetupBloc, MeetupState>(
            listener: (context, state) {
              if (state is MeetupStateSuccess) {
                MessageService.show(
                  title: AppLocalizations.of(
                    context,
                  )!.success_meetupCreatedTitle,
                  message: AppLocalizations.of(
                    context,
                  )!.success_meetupCreatedDescription,
                  type: MessageType.success,
                );
              }
              if (state is MeetupStateError) {
                MessageService.show(
                  title: AppLocalizations.of(
                    context,
                  )!.error_defaultMessageTitle,
                  message: AppLocalizations.of(
                    context,
                  )!.error_defaultMessageDescription,
                  type: MessageType.error,
                );
              }
            },
            child: BlocConsumer<QrCodeUserBloc, QrCodeUserState>(
              listener: (context, state) {
                if (state is QrCodeUserStateSuccess) {
                  showMeetupWoltModalSheet(
                    context,
                    user: state.user,
                  );
                }
                if (state is QrCodeUserStateError) {
                  MessageService.show(
                    title: 'Error loading user',
                    message: state.errorMessage,
                    type: MessageType.error,
                  );
                }
              },
              builder: (context, state) {
                if (state is QrCodeUserStateLoading) {
                  return Center(
                    child: CustomLoadingAnimationElement(),
                  );
                }
                return BlocConsumer<
                  LoadMeetupsBloc,
                  LoadMeetupsState
                >(
                  listener: (context, state) {
                    if (state is LoadMeetupsStateError) {
                      MessageService.show(
                        title: AppLocalizations.of(
                          context,
                        )!.error_defaultMessageTitle,
                        message: AppLocalizations.of(
                          context,
                        )!.error_defaultMessageDescription,
                        type: MessageType.error,
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is LoadMeetupsStateSuccess) {
                      return SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 0,
                          ),
                          child: CustomScrollView(
                            slivers: [
                              SliverPersistentHeader(
                                pinned: true,
                                delegate: CustomAppBarDelegate(),
                              ),
                              SliverToBoxAdapter(
                                child: addVerticalSpace(20),
                              ),
                              state.activeMeetups.length == 0 &&
                                      state.notActiveMeetups.length == 0
                                  ? SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(
                                          context,
                                        )!.noCurrentMeetups,
                                      ),
                                    )
                                  : SliverToBoxAdapter(),
                              state.activeMeetups.length != 0
                                  ? SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(
                                          context,
                                        )!.activeMeetups.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withValues(alpha: 0.4),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    )
                                  : SliverToBoxAdapter(),
                              state.activeMeetups.length != 0
                                  ? SliverToBoxAdapter(
                                      child: addVerticalSpace(15),
                                    )
                                  : SliverToBoxAdapter(),
                              SliverList.separated(
                                itemCount: state.activeMeetups.length,
                                separatorBuilder: (context, index) {
                                  return addVerticalSpace(20);
                                },
                                itemBuilder: (context, index) =>
                                    CurrentMeetupElement(
                                      meetup:
                                          state.activeMeetups[index],
                                    ),
                              ),
                              state.activeMeetups.length != 0
                                  ? SliverToBoxAdapter(
                                      child: addVerticalSpace(25),
                                    )
                                  : SliverToBoxAdapter(),
                              state.notActiveMeetups.length != 0
                                  ? SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(
                                              context,
                                            )!.notActiveMeetups
                                            .toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withValues(alpha: 0.4),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    )
                                  : SliverToBoxAdapter(),
                              state.notActiveMeetups.length != 0
                                  ? SliverToBoxAdapter(
                                      child: addVerticalSpace(15),
                                    )
                                  : SliverToBoxAdapter(),
                              SliverList.separated(
                                itemCount: state.notActiveMeetups.length,
                                separatorBuilder: (context, index) {
                                  return addVerticalSpace(20);
                                },
                                itemBuilder: (context, index) =>
                                    CurrentMeetupElement(
                                      meetup:
                                          state.notActiveMeetups[index],
                                    ),
                              ),
                              SliverToBoxAdapter(
                                child: addVerticalSpace(150),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    if (state is LoadMeetupsStateLoading) {
                      return Center(child: CustomLoadingAnimationElement());
                    }
                    return Container();
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
