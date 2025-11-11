import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parentia/core/go_router.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';

class _MessageRequest {
  final String title;
  final String message;
  final MessageType type;
  final Duration duration;

  _MessageRequest({
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

  static void show({
    required String title,
    required String message,
    required MessageType type,
    Duration duration = const Duration(seconds: 3),
  }) {
    _queue.add(
      _MessageRequest(
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

    // Delay slightly to ensure context is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _insertOverlay();
    });
  }

  static void _insertOverlay() {
    if (_queue.isEmpty) {
      _isVisible = false;
      return;
    }
    final navigator = globalNavigatorKey.currentState;
    if (navigator == null) {
      debugPrint('MessageService: Navigator not available yet, retrying...');
      _isVisible = false;
      Future.delayed(Duration(milliseconds: 100), () {
        if (_queue.isNotEmpty) {
          _showNextNotification();
        }
      });
      return;
    }

    // Use the overlay from the navigator directly
    final overlay = navigator.overlay;
    if (overlay == null) {
      debugPrint('MessageService: Overlay not available');
      _isVisible = false;
      return;
    }

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

    try {
      overlay.insert(_overlayEntry!);
      HapticFeedback.mediumImpact();

      _timer?.cancel();
      _timer = Timer(request.duration, () {
        _messageKey.currentState?.dismiss();
      });
    } catch (e) {
      debugPrint('MessageService: Failed to insert overlay - $e');
      _overlayEntry = null;
      _isVisible = false;
      // Try to show next message in queue if any
      if (_queue.isNotEmpty) {
        _showNextNotification();
      }
    }
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
}
