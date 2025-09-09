import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/form_field.dart';
import 'package:parentia/features/account/application/blocs/change_current_user/change_current_user_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class EditProfileForm extends StatefulWidget {
  final String fullNameValue;
  final String emailValue;
  final String username;
  const EditProfileForm({
    super.key,
    required this.fullNameValue,
    required this.emailValue, required this.username,
  });

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _fullNameController.text = widget.fullNameValue;
    _emailController.text = widget.emailValue;
    _userNameController.text = widget.username;
    
  }

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeCurrentUserBloc, ChangeCurrentUserState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showValueErrors == true ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.fullName.toUpperCase(),
                style: TextStyle(
                  fontSize: 10,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: .3),
                  fontWeight: FontWeight.w500,
                ),
              ),
              addVerticalSpace(10),
              CustomFormField(
                label: AppLocalizations.of(context)!.fullName.toUpperCase(),
                controller: _fullNameController,
                onChanged: (_) {
                  BlocProvider.of<ChangeCurrentUserBloc>(context).add(ChangeCurrentUserEvent.changeName(_fullNameController.text));
                },
              ),
              addVerticalSpace(20),
              Text(
                AppLocalizations.of(context)!.username.toUpperCase(),
                style: TextStyle(
                  fontSize: 10,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: .3),
                  fontWeight: FontWeight.w500,
                ),
              ),
              addVerticalSpace(10),
              CustomFormField(
                label: AppLocalizations.of(context)!.username.toUpperCase(),
                controller: _userNameController,
                onChanged: (_) {
                  BlocProvider.of<ChangeCurrentUserBloc>(context).add(ChangeCurrentUserEvent.changeUsername(_userNameController.text));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
