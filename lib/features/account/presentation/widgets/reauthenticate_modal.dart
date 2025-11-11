import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/form_field.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/auth/application/reauthenticate/reauthenticate_bloc.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/l10n/app_localizations.dart';

class ReauthenticateModalWidget extends StatefulWidget {
  const ReauthenticateModalWidget({super.key});

  @override
  State<ReauthenticateModalWidget> createState() =>
      _ReauthenticateModalWidgetState();
}

class _ReauthenticateModalWidgetState extends State<ReauthenticateModalWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ReauthenticateBloc>(),
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: BlocConsumer<ReauthenticateBloc, ReauthenticateState>(
              listener: (context, state) {
                state.failureOrSuccess.fold(() {}, (v) {
                  v.fold((failure) {
                    if (failure is ReauthenticateUserButNoUserLoggedIn) {
                      MessageService.show( title: AppLocalizations.of(context)!.error_reauthenticateButNoUserLoggedInTitle, message: AppLocalizations.of(context)!.error_reauthenticateButNoUserLoggedInDescription, type: MessageType.error);
                    } else if (failure is ReauthenticateUserWithDifferentEmail) {
                      MessageService.show( title: AppLocalizations.of(context)!.error_reauthenticateWithDifferentEmailTitle, message: AppLocalizations.of(context)!.error_reauthenticateWithDifferentEmailDescription, type: MessageType.error);
                    } else if (failure is ReauthenticateUserMismatch) {
                      MessageService.show( title: AppLocalizations.of(context)!.error_reauthenticateUserMismatchTitle, message: AppLocalizations.of(context)!.error_reauthenticateUserMismatchDescription, type: MessageType.error);
                    } else if (failure is ReauthenticateInvalidCredential) {
                      MessageService.show( title: AppLocalizations.of(context)!.error_reauthenticateInvalidCredentialTitle, message: AppLocalizations.of(context)!.error_reauthenticateInvalidCredentialDescription, type: MessageType.error);
                    } else {
                      MessageService.show( title: AppLocalizations.of(context)!.error_defaultMessageTitle, message: AppLocalizations.of(context)!.error_defaultMessageDescription, type: MessageType.error);
                    }
                  }, (success) {
                    MessageService.show( title: AppLocalizations.of(context)!.success_reauthenticateSuccessTitle, message: AppLocalizations.of(context)!.success_reauthenticateSuccessDescription, type: MessageType.success);
                    Navigator.of(context).maybePop();
                  });
                });
              },
              builder: (context, state) {
                if (state.isLoading == true) {
                  return Container(
                    height: 500, 
                    child: Center(child: CustomLoadingAnimationElement())
                  );
                }
                return Container(
                  padding: EdgeInsetsGeometry.only(
                    left: 20,
                    right: 20,
                    bottom: 30,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.reauthenticate,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          addVerticalSpace(15),
                          Text(
                            AppLocalizations.of(
                              context,
                            )!.reauthenticateDescription,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          addVerticalSpace(40),
                          CustomFormField(
                            label: AppLocalizations.of(
                              context,
                            )!.email.toUpperCase(),
                            autofocus: true,
                            controller: _emailController,
                            keyBoardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              BlocProvider.of<ReauthenticateBloc>(context).add(
                                ReauthenticateEvent.emailUpdated(
                                  _emailController.text,
                                ),
                              );
                            },
                          ),
                          addVerticalSpace(15),
                          CustomFormField(
                            label: AppLocalizations.of(
                              context,
                            )!.password.toUpperCase(),
                            obscureText: true,
                            onChanged: (value) {
                              BlocProvider.of<ReauthenticateBloc>(context).add(
                                ReauthenticateEvent.passwordUpdated(
                                  _passwordController.text,
                                ),
                              );
                            },
                            controller: _passwordController,
                          ),
                          addVerticalSpace(100),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CustomButton(
                          onPressed: () {
                            BlocProvider.of<ReauthenticateBloc>(
                              context,
                            ).add(ReauthenticateEvent.save());
                          },
                          isPrimaryButton: true,
                          icon: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                          height: 55,
                          width: 55,
                          padding: EdgeInsets.all(0),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
