

import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';

class OneActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const OneActionButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
            child: Container(
              child: Center(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 45,
            ),
            onPressed: () {
              onPressed();
            },
          );
  }
}