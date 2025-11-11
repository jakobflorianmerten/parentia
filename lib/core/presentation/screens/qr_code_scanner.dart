import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:parentia/core/presentation/widgets/custom_icon_button.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';

class QrCodeScannerScreen extends StatefulWidget {
  const QrCodeScannerScreen({super.key});

  @override
  State<QrCodeScannerScreen> createState() => _QrCodeScannerScreenState();
}

class _QrCodeScannerScreenState extends State<QrCodeScannerScreen> {
  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(
            controller: _controller,
            onDetect: (BarcodeCapture capture) {
              final String? code = capture.barcodes.first.rawValue;
              if (code != null) {
                GoRouter.of(context).go('/home?code=' + code.toString());
              }
            },
          ),
          Positioned(
            top: 20,
            right: 20,
            child: SafeArea(
              child: CustomIconButton(
                icon: Icon(Icons.close_rounded, color: Colors.white, size: 20),
                onPressed: () {
                  GoRouter.of(context).go('/home');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
