import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PSingleAddress extends StatelessWidget {
  const PSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return PRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(PSizes.md),
      width: double.infinity,
      backgroundColor: selectedAddress
          ? PColors.primaryColor.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? PColors.darkerGrey
              : PColors.grey,
      margin: const EdgeInsets.only(bottom: PSizes.spaceBtnItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? PColors.light
                      : PColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sushant Sigdel',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: PSizes.sm / 2),
              const Text(
                '(+977) 9812345678',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: PSizes.sm / 2),
              const Text(
                'Kissan mart road, 3300, Gaidakot, Gandaki, Nepal',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
