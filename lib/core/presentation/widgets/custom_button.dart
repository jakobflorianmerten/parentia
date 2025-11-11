import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomButton extends StatefulWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? color;
  final bool? isPrimaryButton;
  final String? text;
  final Icon? icon;
  final Function onPressed;
  final bool? isNotActive;

  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.color,
    this.text,
    this.icon,
    this.isPrimaryButton,
    required this.onPressed,
    this.isNotActive,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
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
      onTapDown: (_) {
        if (widget.isNotActive != null && widget.isNotActive == true) return;
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
      onTapCancel: () {
        if (widget.isNotActive != null && widget.isNotActive == true) return;

        _controller.reverse();
      },
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          width: widget.width,
          height: widget.height,
          child: Center(
            child: widget.text != null
                ? Text(
                    widget.text!,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color:
                          widget.isPrimaryButton != null &&
                              widget.isPrimaryButton == true
                          ? Theme.of(context).buttonTheme.colorScheme!.onPrimary
                          : Theme.of(
                              context,
                            ).buttonTheme.colorScheme!.onSecondary,
                    ),
                  )
                : widget.icon != null
                ? widget.icon
                : Container(),
          ),
          padding: widget.padding != null
              ? widget.padding
              : EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            color: widget.color != null
                ? widget.color
                : widget.isPrimaryButton != null &&
                      widget.isPrimaryButton == true
                ? Theme.of(context).buttonTheme.colorScheme!.primary
                : Theme.of(context).buttonTheme.colorScheme!.secondary,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
