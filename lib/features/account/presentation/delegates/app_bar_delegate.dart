


import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/custom_app_bar.dart';

class CustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CustomizedAppBar();
  }

  @override
  double get maxExtent => 66;

  @override
  double get minExtent => 66;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}