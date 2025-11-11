import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';

class TwoActionButtons extends StatelessWidget {
  final String textLeft;
  final String textRight;

  final Function onPressedLeft;
  final Function onPressedRight;

  const TwoActionButtons({
    super.key,
    required this.textLeft,
    required this.textRight,
    required this.onPressedLeft,
    required this.onPressedRight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomClickedElement(
            child: Center(
              child: Text(
                textLeft,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Color(0xFFAF1919)
                ),
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            onPressed: () {
              onPressedLeft();
            },
          ),
        ),
        Expanded(
          child: CustomClickedElement(
            child: Center(
              child: Text(
                textRight,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Color(0xFF0FC721)
                ),
                textAlign: TextAlign.right,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            onPressed: () {
              onPressedRight();
            },
          ),
        ),
      ],
    );
  }
}
