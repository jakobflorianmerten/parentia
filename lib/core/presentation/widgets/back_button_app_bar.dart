import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/back_button.dart';

class BackButtonAppBar extends StatelessWidget {
  const BackButtonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: SizedBox(
            width: 50,
            height: 50,
            child: CustomBackButton(),
          ),
        ),
      ),
    );
  }
}
