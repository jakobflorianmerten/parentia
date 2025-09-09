

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingAnimationElement extends StatelessWidget {
  const CustomLoadingAnimationElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
          'assets/animations/loading.json',
          width: 50, 
          height: 50
        );
  }
}