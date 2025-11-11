import 'package:flutter/gestures.dart';
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
import 'package:url_launcher/url_launcher.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool hasCheckedLegal = false;

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
                        child: Column(
                          children: [
                            SignupEmailAndPasswordForm(),
                            addVerticalSpace(20),
                            Row(
                              children: [
                                Checkbox(
                                  value: hasCheckedLegal,
                                  onChanged: (value) {
                                    setState(() {
                                      hasCheckedLegal = value ?? false;
                                    });
                                  },
                                ),
                                addHorizontalSpace(5),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium,
                                      children: [
                                        TextSpan(text: AppLocalizations.of(context)!.iacceptthe),
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.privacyPolicy,
                                          style: TextStyle(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url = Uri.parse(
                                                'https://jakobflorianmerten.github.io/parentia/PRIVACY_POLICY.html',
                                              );
                                              if (await canLaunchUrl(url)) {
                                                await launchUrl(
                                                  url,
                                                  mode: LaunchMode
                                                      .inAppWebView,
                                                );
                                              }
                                            },
                                        ),
                                        TextSpan(text: AppLocalizations.of(context)!.andThe),
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.termsOfUse,
                                          style: TextStyle(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url = Uri.parse(
                                                'https://jakobflorianmerten.github.io/parentia/TERMS_OF_USE.html',
                                              );
                                              if (await canLaunchUrl(url)) {
                                                await launchUrl(
                                                  url,
                                                  mode: LaunchMode
                                                      .inAppWebView,
                                                );
                                              }
                                            },
                                        ),
                                        TextSpan(text: '.'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      bool canSubmit = false;
                      if (state.email.isValid() &&
                          state.password.isValid() &&
                          hasCheckedLegal == true) {
                        canSubmit = true;
                      }
                      return Positioned(
                        bottom: 0,
                        right: 0,
                        child: Opacity(
                          opacity: canSubmit == true ? 1 : 0.4,
                          child: CustomButton(
                            onPressed: () {
                              BlocProvider.of<RegisterBloc>(
                                context,
                              ).add(RegisterEvent.signUpRequested());
                            },
                            isNotActive: canSubmit == false,
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
