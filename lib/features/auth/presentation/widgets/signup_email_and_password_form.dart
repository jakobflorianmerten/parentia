import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/form_field.dart';
import 'package:parentia/features/auth/application/register/register_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class SignupEmailAndPasswordForm extends StatefulWidget {
  const SignupEmailAndPasswordForm({super.key});

  @override
  State<SignupEmailAndPasswordForm> createState() =>
      _SignupEmailAndPasswordFormState();
}

class _SignupEmailAndPasswordFormState
    extends State<SignupEmailAndPasswordForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages == true
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              CustomFormField(
                label: AppLocalizations.of(context)!.email.toUpperCase(),
                controller: _emailController,
                keyBoardType: TextInputType.emailAddress,
                onChanged: (_) {
                  BlocProvider.of<RegisterBloc>(
                    context,
                  ).add(RegisterEvent.emailChanged(_emailController.text));
                },
                validator: (value) {
                  return BlocProvider.of<RegisterBloc>(context).state.email.value.fold(
                    (l) {
                      if (l is InvalidEmailAddress) {
                        return 'Keine valide E-Mail Adresse';
                      }
                      return null;
                    },
                    (r) => null,
                  );
                },
              ),
              addVerticalSpace(20),
              CustomFormField(
                label: AppLocalizations.of(context)!.password.toUpperCase(),
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  return BlocProvider.of<RegisterBloc>(
                    context,
                  ).state.password.value.fold(
                    (l) {
                      if (l is InvalidPassword) {
                        return 'Kein valides Passwort';
                      }
                      return null;
                    },
                    (r) => null,
                  );
                },
                onChanged: (_) {
                  BlocProvider.of<RegisterBloc>(context).add(
                    RegisterEvent.passwordChanged(_passwordController.text),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
