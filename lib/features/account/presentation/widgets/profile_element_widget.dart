import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/profile_picture_or_name.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';

class ProfileElementWidget extends StatelessWidget {
  const ProfileElementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserBloc, CurrentUserState>(
      builder: (context, state) {
        if (state is CurrentUserStateAuthenticateWithAccount) {
          return Builder(
            builder: (context) {
              return CustomClickedElement(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Row(
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
                        child: ProfilePictureOrName(profilePicture: state.user.profilePicture, name: state.user.fullName)
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
                                  state.user.fullName,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSurface,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  state.user.username, 
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
                  showProfileModalBottomSheet(context);
                },
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
