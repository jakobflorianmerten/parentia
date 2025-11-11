

import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';

class InformationWidgetWithChild extends StatelessWidget {

  final String label;
  final Widget child;

  const InformationWidgetWithChild({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label, 
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7), 
            fontSize: 14
          )
        ), 
        addVerticalSpace(10),
        child
      ],
    );
  }
}