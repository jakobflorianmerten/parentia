import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/form_field.dart';
import 'package:parentia/features/auth/application/forgot_password/forgot_password_bloc.dart';
import 'package:parentia/features/auth/application/signin/signin_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: CustomFormField(
        label: AppLocalizations.of(context)!.email.toUpperCase(),
        controller: _emailController,
        keyBoardType: TextInputType.emailAddress,
        onChanged: (_) {
          BlocProvider.of<ForgotPasswordBloc>(context).add(ForgotPasswordEvent.emailChanged(_emailController.text));
        },
      ),
    );
  }
}
