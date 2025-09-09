import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screnHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screnHeight * 7 / 10,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(20),
            child: QrImageView(
              data: "test",
              embeddedImageStyle: QrEmbeddedImageStyle(
                size: const Size(
                  double.infinity,
                  500,
                ),
              ),
            ),
          ),
          addVerticalSpace(40),
          CustomClickedElement(
            child: Container(
              constraints: BoxConstraints(maxWidth: 400),
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.close,
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
