import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PBottomAddToCard extends StatelessWidget {
  const PBottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: PSizes.defaultSpace, vertical: PSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? PColors.darkerGrey : PColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(PSizes.cardRadiusMd),
            topRight: Radius.circular(PSizes.cardRadiusMd),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const PCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: PColors.darkGrey,
                width: 40,
                height: 40,
                color: PColors.white,
              ),
              const SizedBox(width: PSizes.spaceBtnItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: PSizes.spaceBtnItems),
              const PCircularIcon(
                icon: Iconsax.add,
                backgroundColor: PColors.black,
                width: 40,
                height: 40,
                color: PColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(PSizes.md),
                  backgroundColor: PColors.black,
                  side: const BorderSide(color: PColors.black)),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
