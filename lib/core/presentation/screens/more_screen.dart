import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/crashlytics_analytics_alert_dialog.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/navigate_to_widget.dart';
import 'package:parentia/features/account/presentation/delegates/app_bar_delegate.dart';
import 'package:parentia/features/account/presentation/widgets/profile_element_widget.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:parentia/main.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomAppBarDelegate(),
            ),
            SliverToBoxAdapter(child: addVerticalSpace(20)),
            SliverList.list(
              children: [
                NavigatoTWidget(
                  leadingWidget: Text(
                    AppLocalizations.of(context)!.meetupHistory,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/meetup-history');
                  },
                ),
                addVerticalSpace(15),
                NavigatoTWidget(
                  leadingWidget: Text(
                    AppLocalizations.of(context)!.account,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/account');
                  },
                ),
                addVerticalSpace(15),
                NavigatoTWidget(
                  leadingWidget: Text(
                    AppLocalizations.of(context)!.settings,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/settings');
                  },
                ),
                addVerticalSpace(15),
                NavigatoTWidget(
                  leadingWidget: Text(
                    "test crashlytics",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  onPressed: () {
                    FirebaseCrashlytics.instance.crash();
                    throw Exception();
                  },
                ),
                addVerticalSpace(25),
                ProfileElementWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
