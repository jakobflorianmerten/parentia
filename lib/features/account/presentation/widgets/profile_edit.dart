import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/image_picker.dart';
import 'package:parentia/features/account/application/blocs/change_current_user/change_current_user_bloc.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/presentation/widgets/edit_profile_form.dart';

class ProfileEditWidget extends StatefulWidget {
  final User user;
  const ProfileEditWidget({super.key, required this.user});

  @override
  State<ProfileEditWidget> createState() => _ProfileEditWidgetState();
}

class _ProfileEditWidgetState extends State<ProfileEditWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeCurrentUserBloc, ChangeCurrentUserState>(
      builder: (context, state) {
        if (state.isLoading == true) return Center(child: CustomLoadingAnimationElement());
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Builder(
                builder: (context) {
                  return ImagePickerWidget(onImagePicked: (file) {
                    BlocProvider.of<ChangeCurrentUserBloc>(context).add(ChangeCurrentUserEvent.changeProfilePicture(file));
                  },);
                },
              )
            ),
            addVerticalSpace(40),
            EditProfileForm(
              fullNameValue: widget.user.fullName,
              emailValue: widget.user.email,
              username: widget.user.username,
            ),
          ],
        );
      },
    );
  }
}
