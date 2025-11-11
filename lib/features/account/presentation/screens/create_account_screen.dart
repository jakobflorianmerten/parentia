import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/image_picker.dart';
import 'package:parentia/core/presentation/widgets/loading_animation.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/application/blocs/create_user/create_user_bloc.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:parentia/features/account/presentation/screens/create_account_form.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:parentia/main.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ConsentWrapper(
      child: BlocProvider(
        create: (context) => locator<CreateUserBloc>(),
        child: BlocConsumer<CreateUserBloc, CreateUserState>(
          listener: (context, state) {
            if (state.failureOrSuccess.isSome()) {
              state.failureOrSuccess.fold(() => null, (v) {
                v.fold(
                  (failure) {
                    if (failure is UsernameAlreadyExists) {
                      MessageService.show(
                        title: AppLocalizations.of(context)!.error_createAccountUsernameAlreadyExistsTitle,
                        message:
                            AppLocalizations.of(context)!.error_createAccountUsernameAlreadyExistsDescription,
                        type: MessageType.error,
                      );
                    } else {
                      MessageService.show(
                        title: AppLocalizations.of(context)!.error_defaultMessageTitle,
                        message:
                            AppLocalizations.of(context)!.error_defaultMessageDescription,
                        type: MessageType.error,
                      );
                    }
                  },
                  (success) {
                    GoRouter.of(context).go('/home');
                    NotificationService().onLoginOrRegister();
                  },
                );
              });
            }
          },
          builder: (context, state) {
            if (state.isSubmitting == true) return CustomLoadingAnimation();
            return Scaffold(
              body: SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          addVerticalSpace(20),
                          Center(
                            child: Builder(
                              builder: (context) {
                                return ImagePickerWidget(
                                  onImagePicked: (file) {
                                    BlocProvider.of<CreateUserBloc>(
                                      context,
                                    ).add(
                                      CreateUserEvent.profilePictureChanged(file),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          addVerticalSpace(60),
                          CreateAccountForm(),
                          addVerticalSpace(20),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Builder(
                        builder: (context) {
                          return CustomButton(
                            onPressed: () {
                              BlocProvider.of<CreateUserBloc>(
                                context,
                              ).add(CreateUserEvent.submitCreateUser());
                            },
                            isPrimaryButton: true,
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            ),
                            height: 55,
                            width: 55,
                            padding: EdgeInsets.all(0),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
