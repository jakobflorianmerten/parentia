import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/profile_picture_or_name.dart';

class UserWidget extends StatelessWidget {
  final String profilePicture;
  final String name;

  const UserWidget({
    super.key,
    required this.profilePicture,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Container(
            width: 40, 
            height: 40, 
            child: ProfilePictureOrName(profilePicture: profilePicture, name: name)
          )
        ],
      ),
    );
  }
}
