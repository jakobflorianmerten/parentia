import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/go_router.dart';
import 'package:parentia/core/presentation/widgets/back_button.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/loading_animation.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/auth/application/register/register_bloc.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/presentation/widgets/signup_email_and_password_form.dart';
import 'package:parentia/l10n/app_localizations.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (BuildContext context, RegisterState state) {
        state.authFailureOrSuccessOption.fold(() {}, (either) {
          either.fold(
            (failure) {
              String errTitle = AppLocalizations.of(
                context,
              )!.error_defaultMessageTitle;
              String errMessage = AppLocalizations.of(
                context,
              )!.error_defaultMessageDescription;
              if (failure is EmailAlreadyInUse) {
                errTitle = AppLocalizations.of(
                  context,
                )!.error_signupEmailAlreadyInUseTitle;
                errMessage = AppLocalizations.of(
                  context,
                )!.error_signupEmailAlreadyInUseDescription;
              }
              MessageService.show(
                context,
                title: errTitle,
                message: errMessage,
                type: MessageType.error,
              );
            },
            (_) {
              GoRouter.of(context).go('/verify-email');
            },
          );
        });
      },
      builder: (context, state) {
        if (state.isSubmitting == true) return CustomLoadingAnimation();
        return Scaffold(
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
                      CustomBackButton(
                        navigatorKey: globalNavigatorKey,
                      ),
                      addVerticalSpace(40),
                      Text(
                        AppLocalizations.of(context)!.register,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      addVerticalSpace(30),
                      Expanded(
                        child: PageView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            SignupEmailAndPasswordForm(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      return Positioned(
                        bottom: 0,
                        right: 0,
                        child: Opacity(
                          opacity: state.email.isValid() && state.password.isValid() ? 1 : 0.4,
                          child: CustomButton(
                            onPressed: () {
                              BlocProvider.of<RegisterBloc>(
                                context,
                              ).add(RegisterEvent.signUpRequested());
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
