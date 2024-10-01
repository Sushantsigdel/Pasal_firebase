import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/text_strings.dart';

class PHomeAppBar extends StatelessWidget {
  const PHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            PTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: PColors.grey),
          ),
          Text(
            PTexts.homeAppbarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: PColors.white),
          ),
        ],
      ),
      actions: [
        PCartCounterIcon(
          onPressed: () {},
          iconColor: PColors.white,
          counterBgColor: PColors.black,
          counterTextColor: PColors.white,
        )
      ],
    );
  }
}
