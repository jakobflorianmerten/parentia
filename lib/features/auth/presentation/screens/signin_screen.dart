import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/back_button.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/loading_animation.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/auth/application/signin/signin_bloc.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/presentation/widgets/signin_form.dart';
import 'package:parentia/l10n/app_localizations.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninBloc, SigninState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(() {}, (either) {
          either.fold(
            (failure) {
              if (failure is UserAlreadySignedInOnDifferentDevice) {
                MessageService.show(
                  title: AppLocalizations.of(
                    context,
                  )!.error_signinUserAlreadySignedInOnDifferentDeviceTitle,
                  message: AppLocalizations.of(
                    context,
                  )!.error_signinUserAlreadySignedInOnDifferentDeviceDescription,
                  type: MessageType.error,
                );
              }

              MessageService.show(
                title: AppLocalizations.of(
                  context,
                )!.error_signinInvalidEmailAndPasswordTitle,
                message: AppLocalizations.of(
                  context,
                )!.error_signinInvalidEmailAndPasswordDescription,
                type: MessageType.error,
              );
            },
            (_) {
              GoRouter.of(context).go('/home');
              NotificationService().onLoginOrRegister();
            },
          );
        });
      },
      builder: (context, state) {
        if (state.isSubmitting == true) return CustomLoadingAnimation();
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
                        AppLocalizations.of(context)!.login,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      addVerticalSpace(30),
                      SigninForm(),
                      addVerticalSpace(30),
                      CustomClickedElement(
                        child: Text(
                          AppLocalizations.of(context)!.forgotPassword,
                          style: Theme.of(context).textTheme.displayMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                        onPressed: () {
                          GoRouter.of(context).push('/forgot-password');
                        },
                      ),
                    ],
                  ),
                  BlocBuilder<SigninBloc, SigninState>(
                    builder: (context, state) {
                      return Positioned(
                        bottom: 0,
                        right: 0,
                        child: Opacity(
                          opacity:
                              state.email.isValid() && state.password.isValid()
                              ? 1
                              : 0.4,
                          child: CustomButton(
                            isNotActive:
                                !state.email.isValid() ||
                                !state.password.isValid(),
                            onPressed: () {
                              BlocProvider.of<SigninBloc>(
                                context,
                              ).add(SigninEvent.signInRequested());
                            },
                            isPrimaryButton: true,
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
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
