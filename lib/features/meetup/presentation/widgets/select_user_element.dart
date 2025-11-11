
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/profile_picture_or_name.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/meetup/application/blocs/new_meetup_bloc/new_meetup_bloc.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class SelectUserElement extends StatelessWidget {
  final User user;

  const SelectUserElement({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: CustomClickedElement(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer, 
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2
                  ),
                ),
                width: 70,
                height: 70,
                child: ProfilePictureOrName(
                  profilePicture: user.profilePicture, 
                  name: user.fullName
                ),
              ),
              addHorizontalSpace(20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.fullName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          user.username, 
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
                            fontWeight: FontWeight.w400, 
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              addHorizontalSpace(10),
              Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.primary,
                size: 10,
              ),
            ],
          ),
        ),
        onPressed: () {
          BlocProvider.of<NewMeetupBloc>(context).add(NewMeetupEvent.selectedMeetupPartner(user));
          modalSheetPageIndexNotifier.value++;
          //WoltModalSheet.of(context).showAtIndex(1);
        },
      ),
    );
  }
}
