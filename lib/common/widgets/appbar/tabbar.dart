import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/device/device_utlity.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PTabBar extends StatelessWidget implements PreferredSizeWidget {
  // To add background color to tabs, wrap them in Material widget.
  // Todo:  [PreferredSized] Widget and thats why we neeed custom class. [PreferredSizeWidget]
  const PTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Material(
        color: dark ? PColors.black : PColors.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: dark ? PColors.white : PColors.primaryColor,
          unselectedLabelColor: PColors.darkGrey,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(PDeviceUtils.getAppBarHeight());
}
