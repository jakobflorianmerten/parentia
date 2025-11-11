import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';

class BecomePremiumWidget extends StatelessWidget {
  const BecomePremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
      onPressed: () {},
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/become_pro.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                "Werde Pro Nutzer",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
