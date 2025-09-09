import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';

class _MessageRequest {
  final BuildContext context;
  final String title;
  final String message;
  final MessageType type;
  final Duration duration;

  _MessageRequest({
    required this.context,
    required this.title,
    required this.message,
    required this.type,
    required this.duration,
  });
}

class MessageService {
  static final _messageKey = GlobalKey<OverlayMessageWidgetState>();
  static final List<_MessageRequest> _queue = [];
  static OverlayEntry? _overlayEntry;
  static Timer? _timer;
  static bool _isVisible = false;

  static void show(
    BuildContext context, {
    required String title,
    required String message,
    required MessageType type,
    Duration duration = const Duration(seconds: 3),
  }) {
    _queue.add(
      _MessageRequest(
        context: context,
        title: title,
        message: message,
        type: type,
        duration: duration,
      ),
    );

    if (!_isVisible) {
      _showNextNotification();
    }
  }

  static void _showNextNotification() {
    if (_queue.isEmpty) {
      _isVisible = false;
      return;
    }
    _isVisible = true;

    final request = _queue.removeAt(0);
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return OverlayMessageWidget(
          key: _messageKey,
          title: request.title,
          message: request.message,
          type: request.type,
          onDismiss: _onDismiss,
        );
      },
    );

    Overlay.of(request.context).insert(_overlayEntry!);
    HapticFeedback.mediumImpact();

    _timer?.cancel();
    _timer = Timer(request.duration, () {
      _messageKey.currentState?.dismiss();
    });
  }

  static void cancelTimer() {
    _timer?.cancel();
  }

  static void _onDismiss() {
    _timer?.cancel();
    _timer = null;
    _overlayEntry?.remove();
    _overlayEntry = null;

    _showNextNotification();
  }

  // static void _removeOverlay() {
  //   if (_overlayEntry != null) {
  //     _overlayEntry?.remove();
  //     _overlayEntry = null;
  //     _timer?.cancel();
  //   }
  // }
}
