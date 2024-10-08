import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/common/widgets/images/p_rounded_image.dart';
import 'package:pasal/common/widgets/texts/p_brand_title_text_with_verified_icon.dart';
import 'package:pasal/common/widgets/texts/product_price_text.dart';
import 'package:pasal/common/widgets/texts/product_title_text.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductCardHorizontal extends StatelessWidget {
  const PProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(PSizes.productImageRadius),
        color: dark ? PColors.darkGrey : PColors.softGrey,
      ),
      child: Row(
        children: [
          // Thumbnail Image
          PRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(PSizes.sm),
            backgroundColor: dark ? PColors.dark : PColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: PRoundedImage(
                      imageUrl: PImages.productImage1, applyImageRadius: true),
                ),
                // Sale tag
                Positioned(
                  top: 12,
                  child: PRoundedContainer(
                    radius: PSizes.sm,
                    backgroundColor: PColors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: PSizes.sm, vertical: PSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: PColors.black)),
                  ),
                ),

                // Favorite icon
                const Positioned(
                  top: 0,
                  right: 0,
                  child: PCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: PSizes.spaceBtnItems / 2),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: PSizes.sm, left: PSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallsize: true,
                      ),
                      SizedBox(height: PSizes.spaceBtnItems / 2),
                      PBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: PProductPriceText(price: '200')),

                      // Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: PColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(PSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(PSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: PSizes.iconLg * 1.2,
                            height: PSizes.iconLg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: PColors.white))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
