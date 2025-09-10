import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatefulWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  const CustomBackButton({super.key, this.navigatorKey});

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton>
    with SingleTickerProviderStateMixin {
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
      onTapDown: (_) {
        _controller.forward();
      },
      onTapUp: (_) {
        _controller.reverse();
        HapticFeedback.mediumImpact();
        if (widget.navigatorKey != null) {
          widget.navigatorKey!.currentState?.maybePop();
        } else {
          GoRouter.of(context).pop();
        }
      },
      onTapCancel: () {
        _controller.reverse();
      },
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Center(
            child: Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          ),
        ),
      ),
    );
  }
}
