import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/blocs/qr_code_user_bloc/qr_code_user_bloc.dart';
import 'package:parentia/core/presentation/animation/custom_drawer.dart';
import 'package:parentia/core/presentation/screens/qr_code_scanner.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/features/account/application/blocs/load_notifications/load_notifications_bloc.dart';
import 'package:parentia/features/account/presentation/widgets/app_bar_qr_code_element.dart';
import 'package:parentia/core/presentation/widgets/custom_icon_button.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 66,
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarQrCodeElement(),
            Row(
              children: [
                CustomIconButton(
                  icon: Icon(Icons.center_focus_strong, size: 25),
                  onPressed: () async {
                    GoRouter.of(context).go('/qr-code-scanner');
                  },
                ),
                addHorizontalSpace(10),
                BlocBuilder<LoadNotificationsBloc, LoadNotificationsState>(
                  builder: (context, state) {
                    return CustomClickedElement(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                        child: Stack(
                          children: [
                            Center(child: Icon(Icons.notifications_active_outlined, size: 25)),
                            if (state is SuccessLoadNotificationsState &&
                                state.numberOfUnreadNotifications > 0)
                              Positioned(
                                right: 5,
                                bottom: 5,
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${state.numberOfUnreadNotifications}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        context.read<DrawerControllerModel>().toggle();
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
    );
  }
}
