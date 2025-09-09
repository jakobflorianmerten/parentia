import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parentia/features/transaction/domain/value_objects/money.dart';

class HomeBalanceCardDelegate extends SliverPersistentHeaderDelegate {
  HomeBalanceCardDelegate({required this.balance});

  final Money balance;
  final euroFormat = NumberFormat.simpleCurrency(locale: 'de_DE', name: '€');

  @override
  double get maxExtent => 175;

  @override
  double get minExtent => 90;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    print("ShrinkOfset: " + shrinkOffset.toString());
    final progress = shrinkOffset / maxExtent;
    print("progress: " + progress.toString());
    final height = maxExtent - (maxExtent - minExtent) * progress;
    print('height: ' + height.toString());
    return Container(
      width: double.infinity,
      height: maxExtent - (maxExtent - minExtent) * progress,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/balance_card_background.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Text(
              euroFormat.format(balance.getOrCrash()),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 25,
            child: Opacity(
              opacity: 1 - progress - 0.3,
              child: Text(
                "BALANCE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
