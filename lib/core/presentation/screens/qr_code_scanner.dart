import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:parentia/core/presentation/widgets/custom_icon_button.dart';

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
                Navigator.of(context).pop(code);
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
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
