import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/form_field.dart';
import 'package:parentia/features/account/application/blocs/create_user/create_user_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({super.key});

  @override
  State<CreateAccountForm> createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUserBloc, CreateUserState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              CustomFormField(
                label: AppLocalizations.of(context)!.username,
                controller: _userNameController,
                onChanged: (_) {
                  BlocProvider.of<CreateUserBloc>(
                    context,
                  ).add(
                    CreateUserEvent.usernameChanged(_userNameController.text),
                  );
                },
                validator: (_) {
                  return state.name.value.fold((f) {
                    if (f is LongFullName) return "Der Name ist zu lang.";
                  }, (_) => null);
                },
              ),
              addVerticalSpace(15),
              CustomFormField(
                label: AppLocalizations.of(context)!.fullName,
                controller: _fullNameController,
                onChanged: (_) {
                  BlocProvider.of<CreateUserBloc>(
                    context,
                  ).add(
                    CreateUserEvent.fullNameChanged(_fullNameController.text),
                  );
                },
                validator: (_) {
                  return state.name.value.fold((f) {
                    if (f is LongFullName) return "Der Name ist zu lang.";
                  }, (_) => null);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
