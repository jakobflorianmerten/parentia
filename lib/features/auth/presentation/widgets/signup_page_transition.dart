import 'package:flutter/material.dart';

class SignupCustomTransition extends StatelessWidget {
  final Animation<double> animation;
  final Animation<double> secondaryAnimation;
  final Widget child;
  final Offset beginOffset;
  final Offset endOffset;

  const SignupCustomTransition({
    super.key,
    required this.animation,
    required this.child,
    this.beginOffset = const Offset(1.0, 0.0),
    this.endOffset = Offset.zero, required this.secondaryAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(begin: beginOffset, end: endOffset).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
        ),
        child: child
      ),
    );
  }
}
