import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';

enum MessageType { success, error }

class OverlayMessageWidget extends StatefulWidget {
  final String title;
  final String message;
  final MessageType type;
  final VoidCallback onDismiss;
  const OverlayMessageWidget({
    super.key,
    required this.title,
    required this.message,
    required this.type,
    required this.onDismiss,
  });

  @override
  State<OverlayMessageWidget> createState() => OverlayMessageWidgetState();
}

class OverlayMessageWidgetState extends State<OverlayMessageWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  final GlobalKey _cardKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void dismiss() {
    if (!mounted || _controller.status == AnimationStatus.reverse) {
      return;
    }
    _controller.reverse().then((_) {
      if (mounted) {
        widget.onDismiss();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    late Color backgroundColor;
    late Color textColor;
    switch (widget.type) {
      case MessageType.success:
        backgroundColor = Color(0xFF0FC721);
        textColor = Colors.black;
        break;
      case MessageType.error:
        backgroundColor = Color(0xFFDA1010);
        textColor = Colors.white;
        break;
    }

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _animation,
        child: GestureDetector(
          onVerticalDragStart: (_) {
            MessageService.cancelTimer();
          },
          onVerticalDragUpdate: (details) {
            final cardHeight = _cardKey.currentContext?.size?.height;
            if (cardHeight == null) return;
            _controller.value += details.primaryDelta! / cardHeight;
          },
          onVerticalDragEnd: (details) {
            if (details.primaryVelocity! < -500 || _controller.value < 0.6) {
              dismiss();
            } else {
              _controller.forward(from: _controller.value);
            }
          },
          child: Material(
            color: backgroundColor,
            child: Container(
              key: _cardKey,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: backgroundColor,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: textColor,
                      ),
                    ),
                    addVerticalSpace(15),
                    Text(
                      widget.message,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: textColor,
                      ),
                    ),
                    addVerticalSpace(20)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
