import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/styles/shadows.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/common/widgets/images/p_rounded_image.dart';
import 'package:pasal/common/widgets/texts/p_brand_title_text_with_verified_icon.dart';
import 'package:pasal/common/widgets/texts/product_price_text.dart';
import 'package:pasal/common/widgets/texts/product_title_text.dart';
import 'package:pasal/features/shop/product_details/product_detail.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductCardVertical extends StatelessWidget {
  const PProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);

    // Container with side paddings, colors,edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [PShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(PSizes.productImageRadius),
          color: dark ? PColors.darkGrey : PColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist, Discount Tag
            PRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(PSizes.sm),
              backgroundColor: dark ? PColors.dark : PColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const PRoundedImage(
                      imageUrl: PImages.productImage1, applyImageRadius: true),

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
            const Padding(
              padding: EdgeInsets.only(left: PSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PProductTitleText(title: 'Green Nike Air', smallsize: true),
                    SizedBox(height: PSizes.spaceBtnItems / 2),
                    PBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                    )
                  ],
                ),
              ),
            ),
            // Todo: Add Spacer() here to keep the height of each box in case 1 or 2 lines of headings
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: PSizes.sm),
                  child: PProductPriceText(price: '40.5'),
                ),

                // Add to cart
                Container(
                  decoration: const BoxDecoration(
                    color: PColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(PSizes.cardRadiusMd),
                      bottomRight: Radius.circular(PSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: PSizes.iconLg * 1.2,
                      height: PSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: PColors.white))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
