

import 'package:flutter/material.dart';

class CustomLongClickedElement extends StatefulWidget {
  final Function onPressed;
  final Widget child;
  const CustomLongClickedElement({super.key, required this.onPressed, required this.child});

  @override
  State<CustomLongClickedElement> createState() => _CustomLongClickedElementState();
}

class _CustomLongClickedElementState extends State<CustomLongClickedElement> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.95).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        _controller.forward();
      },
      onLongPressEnd: (details) {
        _controller.reverse();
        widget.onPressed();
      },
      child: ScaleTransition(
        scale: _animation,
        child: widget.child,
      ),
    );
  }
}