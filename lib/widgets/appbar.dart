import 'package:flutter/material.dart';
import 'package:triller_zone/utils/constants.dart';
import 'package:triller_zone/widgets/mytextwidget.dart';

PreferredSizeWidget? myAppBar(
    BuildContext context, List<Widget> tabs, TabController controller) {
  return AppBar(
    title: MyTextWidget(
      text: texts[0],
    ),
    bottom: TabBar(
      tabs: tabs,
      controller: controller,
    ),
  );
}
