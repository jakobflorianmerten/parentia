import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/account/presentation/screens/profile_screen.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';

class AppBarQrCodeElement extends StatelessWidget {
  const AppBarQrCodeElement({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,

          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            addHorizontalSpace(10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                // border: Border.all(
                //   color: Theme.of(context).colorScheme.primary,
                // ),
              ),
              width: 35,
              height: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  'assets/images/qr_code_example.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 55,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "QR Code",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  addHorizontalSpace(10),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).colorScheme.primary,
                    size: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onPressed: () {
        showQrCodeModalBottomSheet(context);
        // showMaterialModalBottomSheet(
        //   context: context,
        //   expand: false,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(20),
        //       topRight: Radius.circular(20),
        //     ),
        //   ),
        //   barrierColor: Colors.black.withValues(alpha: 0.9),
        //   builder: (context) {
        //     return ProfileScreen();
        //   },
        // );
      },
    );
  }
}
