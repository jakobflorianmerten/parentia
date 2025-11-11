import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/back_button.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/loading_animation.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/auth/application/forgot_password/forgot_password_bloc.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/presentation/widgets/forgot_password_form.dart';
import 'package:parentia/l10n/app_localizations.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(() {}, (v) {
          v.fold(
            (failure) {
              String title = AppLocalizations.of(
                context,
              )!.error_defaultMessageTitle;
              String message = AppLocalizations.of(
                context,
              )!.error_defaultMessageDescription;
              if (failure is PasswordResetInvalidEmail) {
                title = AppLocalizations.of(
                  context,
                )!.error_invalidEmailMessageTitle;
                message = AppLocalizations.of(
                  context,
                )!.error_invalidEmailMessageDescription;
              }
              MessageService.show(
                title: title,
                message: message,
                type: MessageType.error,
                duration: Duration(seconds: 5),
              );
            },
            (_) {
              MessageService.show(
                title: AppLocalizations.of(
                  context,
                )!.success_resetPasswordEmailSentTitle,
                message: AppLocalizations.of(
                  context,
                )!.success_resetPasswordEmailSentDescription,
                type: MessageType.success,
                duration: Duration(seconds: 5),
              );

              Future.delayed(Duration(milliseconds: 500)).then((_) {
                GoRouter.of(context).go('/initial');
              });
            },
          );
        });
      },
      builder: (context, state) {
        if (state.isLoading == true) return CustomLoadingAnimation();
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomBackButton(),
                      addVerticalSpace(40),
                      Text(
                        AppLocalizations.of(context)!.resetPassword,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      addVerticalSpace(30),
                      ForgotPasswordForm(),
                    ],
                  ),
                  BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                    builder: (context, state) {
                      return Positioned(
                        bottom: 0,
                        right: 0,
                        child: Opacity(
                          opacity: state.email.isValid() ? 1 : 0.4,
                          child: CustomButton(
                            isNotActive: !state.email.isValid(),
                            onPressed: () {
                              BlocProvider.of<ForgotPasswordBloc>(
                                context,
                              ).add(ForgotPasswordEvent.submit());
                            },
                            isPrimaryButton: true,
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                            height: 55,
                            width: 55,
                            padding: EdgeInsets.all(0),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
