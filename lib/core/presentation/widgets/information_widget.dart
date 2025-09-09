

import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';

class InformationWidget extends StatelessWidget {

  final String label;
  final String value;

  const InformationWidget({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label, 
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3), 
            fontSize: 10
          )
        ), 
        addVerticalSpace(10),
        Text(
          value, 
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface, 
            fontSize: 16, 
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}