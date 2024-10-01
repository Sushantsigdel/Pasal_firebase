import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductQuantityWithAddandRemoveButton extends StatelessWidget {
  const PProductQuantityWithAddandRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        const SizedBox(width: 70),
        // Add Remove Buttons
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: PSizes.md,
              color: dark ? Colors.white : Colors.black,
              backgroundColor: dark ? PColors.darkerGrey : PColors.light,
            ),
            const SizedBox(width: PSizes.spaceBtnItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: PSizes.spaceBtnItems),
            const PCircularIcon(
                icon: Iconsax.add,
                width: 32,
                height: 32,
                size: PSizes.md,
                color: Colors.white,
                backgroundColor: PColors.primaryColor),
          ],
        ),
      ],
    );
  }
}
