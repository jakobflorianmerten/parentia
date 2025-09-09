import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/form_field.dart';
import 'package:parentia/features/auth/application/signin/signin_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFormField(
            label: AppLocalizations.of(context)!.email.toUpperCase(),
            controller: emailController,
            keyBoardType: TextInputType.emailAddress,
            onChanged: (_) {
              BlocProvider.of<SigninBloc>(context).add(
                EmailChanged(emailController.text),
              );
            },
          ),
          addVerticalSpace(15),
          CustomFormField(
            label: AppLocalizations.of(context)!.password.toUpperCase(),
            controller: passwordController,
            obscureText: true,
            onChanged: (_) {
              BlocProvider.of<SigninBloc>(context).add(
                PasswordChanged(passwordController.text),
              );
            },
          ),
        ],
      ),
    );
  }
}
