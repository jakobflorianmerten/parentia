import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingAnimation extends StatelessWidget {
  const CustomLoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/animations/loading.json',
          width: 100, 
          height: 100
        ),
      ),
    );
  }
}
