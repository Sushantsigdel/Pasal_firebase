import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/brands/brand_cards.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PBranadShowcase extends StatelessWidget {
  const PBranadShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return PRoundedContainer(
      showBorder: true,
      borderColor: PColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.only(bottom: PSizes.spaceBtnItems),
      margin: const EdgeInsets.only(bottom: PSizes.spaceBtnItems),
      child: Column(
        children: [
          // Brand with products count
          const PBrandCard(showBorder: false),
          const SizedBox(height: PSizes.spaceBtnItems),

          // Brand top products
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Expanded brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: PRoundedContainer(
        height: 100,
        backgroundColor: PHelperFunctions.isDarkMode(context)
            ? PColors.darkerGrey
            : PColors.light,
        margin: const EdgeInsets.only(right: PSizes.sm),
        padding: const EdgeInsets.all(PSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
