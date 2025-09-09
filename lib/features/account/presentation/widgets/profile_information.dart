import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/information_widget.dart';
import 'package:parentia/core/presentation/widgets/profile_picture_or_name.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/l10n/app_localizations.dart';

class ProfileInformation extends StatelessWidget {
  final User user;
  const ProfileInformation({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            child: ProfilePictureOrName(
              profilePicture: user.profilePicture,
              name: user.fullName,
            ),
          ),
        ),
        addVerticalSpace(40),
        InformationWidget(label: AppLocalizations.of(context)!.fullName.toUpperCase(), value: user.fullName),
        addVerticalSpace(30),
        InformationWidget(label: AppLocalizations.of(context)!.username.toUpperCase(), value: user.username),
        addVerticalSpace(30),
        InformationWidget(label: AppLocalizations.of(context)!.email.toUpperCase(), value: user.email),
      ],
    );
  }
}
