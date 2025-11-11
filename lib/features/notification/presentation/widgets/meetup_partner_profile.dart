import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';

class MeetupPartnerProfile extends StatelessWidget {
  const MeetupPartnerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          width: 55,
          height: 55,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),
        ),
        addHorizontalSpace(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Max Mustermann",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            addVerticalSpace(5),
            Text(
              "max.mustermann@gmail.com",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
