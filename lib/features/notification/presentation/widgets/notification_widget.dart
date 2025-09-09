


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/account/domain/entities/notification.dart'
    as n;

class NotificationWidget extends StatelessWidget {

  final n.Notification notification;

  const NotificationWidget({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 0, vertical: 20),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer, 
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notification.title, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),), 
            addVerticalSpace(10),
            Text(
              notification.messageBody, 
              style: Theme.of(context).textTheme.bodyMedium
            ), 
            addVerticalSpace(15), 
            Container(
              height: 1, 
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.3), 
              ),
            ), 
            addVerticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('dd.MM.yyyy, HH:mm').format(notification.date),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                if (!notification.read)
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            )
          ],
        )
      )
    );
  }
}