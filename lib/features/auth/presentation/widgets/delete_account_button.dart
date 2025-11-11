import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/application/blocs/delete_user/bloc/delete_user_bloc.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';
import 'package:parentia/l10n/app_localizations.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteUserBloc, DeleteUserState>(
      listener: (context, state) {
        if (state.needToReauthenticate == true) {
          showReauthenticateModalSheet(context);
        }
        state.failureOrSuccess.fold(() {}, (v) {
          v.fold((failure) {
            MessageService.show( title: AppLocalizations.of(context)!.error_defaultMessageTitle, message: AppLocalizations.of(context)!.error_defaultMessageDescription, type: MessageType.error);
          }, (success) {
            GoRouter.of(context).go('/initial');
            MessageService.show( title: AppLocalizations.of(context)!.success_deleteAccountTitle, message: AppLocalizations.of(context)!.success_deleteAccountDescription, type: MessageType.success);
          });
        });
      },
      builder: (context, state) {
        return CustomClickedElement(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(15),
            ),
            child: state.isLoading == true ? Center(child: CustomLoadingAnimationElement()) :  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.deleteAccount,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Icon(
                  Icons.delete,
                  size: 20,
                ),
              ],
            ),
          ),
          onPressed: () {
            BlocProvider.of<DeleteUserBloc>(
              context,
            ).add(DeleteUserEvent.deleteUser());
          },
        );
      },
    );
  }
}
