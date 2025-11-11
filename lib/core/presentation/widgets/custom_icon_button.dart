import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';

class CustomIconButton extends StatelessWidget {

  final Icon icon;
  final Function onPressed;

  const CustomIconButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
      child: Container(
        width: 50, 
        height: 50, 
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Center(
            child: icon,
          ),
      ),
      onPressed: onPressed
    );
  }
}
