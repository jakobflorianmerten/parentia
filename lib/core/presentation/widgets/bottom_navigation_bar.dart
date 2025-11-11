import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  late GoRouter _goRouter;

  @override
  void initState() {
    super.initState();
    _goRouter = GoRouter.of(context);
    _goRouter.routerDelegate.addListener(_handleRouteChange);
  }

  @override
  void dispose() {
    _goRouter.routerDelegate.removeListener(_handleRouteChange);
    super.dispose();
  }

  void _handleRouteChange() {
    if (!mounted) {
      return;
    }

    final path = GoRouter.of(
      context,
    ).routerDelegate.currentConfiguration.uri.path;
    setState(() {
      if (path.startsWith('/home')) {
        _currentIndex = 0;
      } else if (path.startsWith('/more')) {
        _currentIndex = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        height: 120,
        width: double.infinity,
        color: Theme.of(context).colorScheme.surface,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomClickedElement(
                    child: Icon(
                      Icons.home,
                      color: _currentIndex == 0
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    onPressed: () {
                      GoRouter.of(context).go('/home');
                    },
                  ),
                  addHorizontalSpace(0),
                  CustomClickedElement(
                    child: Icon(
                      Icons.more_horiz,
                      color: _currentIndex == 1
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    onPressed: () {
                      GoRouter.of(context).go('/more');
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: CustomButton(
                onPressed: () {
                  showMeetupWoltModalSheet(context);
                },
                isPrimaryButton: true,
                width: 70,
                height: 70,
                icon: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
