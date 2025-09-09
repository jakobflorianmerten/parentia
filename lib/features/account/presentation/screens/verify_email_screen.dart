import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/l10n/app_localizations.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool isEmailVerified = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerified() async {
    User? user = FirebaseAuth.instance.currentUser;
    await user?.reload();
    setState(() {
      isEmailVerified = user!.emailVerified;
    });

    if (isEmailVerified) {
      timer?.cancel();
      GoRouter.of(context).go('/create-user');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.verifyEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            addVerticalSpace(20),
            Text(
              textAlign: TextAlign.center,
              AppLocalizations.of(context)!.verifyEmailDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            addVerticalSpace(40),
            Row(
              children: [
                Expanded(
                  child: CustomClickedElement(
                    onPressed: () {
                      GoRouter.of(context).go('/inital');
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.back,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 55,
                    ),
                  ),
                ),
                addHorizontalSpace(15),
                Expanded(
                  child: CustomClickedElement(
                    onPressed: () {
                      FirebaseAuth.instance.currentUser?.sendEmailVerification();
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.resendVerificationEmail,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 55,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
