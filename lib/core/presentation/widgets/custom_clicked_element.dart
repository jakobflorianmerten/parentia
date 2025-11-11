import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CustomClickedElement extends StatefulWidget {
  final Widget child;
  final Function onPressed;
  final bool? isNotActive;

  const CustomClickedElement({
    super.key,
    required this.child,
    required this.onPressed,
    this.isNotActive,
  });

  @override
  State<CustomClickedElement> createState() => _CustomClickedElementState();
}

class _CustomClickedElementState extends State<CustomClickedElement>
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
    final bool isInactive = widget.isNotActive == true;

    return GestureDetector(
      onTapDown: isInactive
          ? null
          : (_) {
              _controller.forward();
            },
      onTapUp: isInactive
          ? null
          : (_) async {
              HapticFeedback.mediumImpact();
              await _controller.reverse();
              if (mounted) {
                widget.onPressed();
              }
            },
      onTapCancel: isInactive
          ? null
          : () {
              _controller.reverse();
            },
      child: ScaleTransition(
        scale: isInactive ? AlwaysStoppedAnimation(1.0) : _animation,
        child: widget.child,
      ),
    );
  }
}
