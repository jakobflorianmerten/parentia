import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';

class NavigatoTWidget extends StatelessWidget {

  final Widget leadingWidget;
  final Function onPressed;

  const NavigatoTWidget({super.key, required this.leadingWidget, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer, 
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leadingWidget, 
            Icon(Icons.arrow_forward_ios, size: 10,)
          ],
        )
      ),
      onPressed: onPressed
    );
  }
}
