import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/application/blocs/change_current_user/change_current_user_bloc.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/features/account/presentation/widgets/profile_edit.dart';
import 'package:parentia/features/account/presentation/widgets/profile_information.dart';
import 'package:parentia/l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.8;
    return BlocBuilder<CurrentUserBloc, CurrentUserState>(
      builder: (context, state) {
        if (state is CurrentUserStateAuthenticateWithAccount) {
          return Container(
            height: height,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 20,
                    vertical: 60,
                  ),
                  child: isEditing == false
                      ? ProfileInformation(user: state.user)
                      : ProfileEditWidget(user: state.user),
                ),
                Positioned(
                  bottom: 40,
                  right: 20,
                  child: SafeArea(
                    child: isEditing == false
                        ? CustomClickedElement(
                            onPressed: () {
                              setState(() {
                                isEditing = true;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 35,
                                vertical: 20,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.edit,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        : BlocConsumer<ChangeCurrentUserBloc, ChangeCurrentUserState>(
                          listener: (context, state) {
                            state.failureOrSuccess.fold(() {}, (value) {
                              value.fold((failure) {
                                MessageService.show( title: AppLocalizations.of(context)!.error_defaultMessageTitle, message: AppLocalizations.of(context)!.error_defaultMessageDescription, type: MessageType.error);
                              }, (success) {
                                setState(() {
                                  isEditing = false;
                                });
                                MessageService.show( title: AppLocalizations.of(context)!.success_editProfileTitle, message: AppLocalizations.of(context)!.success_editProfileDescription, type: MessageType.success);
                              });
                            });
                          },
                            builder: (context, state) {
                              if (state.isLoading == true) return Container();
                              return CustomClickedElement(
                                onPressed: () {
                                  if (state.email.isNone() && state.name.isNone() && state.username.isNone() && state.profilePicture.isNone()) {
                                    setState(() {
                                      isEditing = false;
                                    });
                                    return;
                                  }
                                  BlocProvider.of<ChangeCurrentUserBloc>(context).add(ChangeCurrentUserEvent.saveChanges());
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 35,
                                    vertical: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.save,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
