import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/images/p_circular_image.dart';
import 'package:pasal/common/widgets/texts/p_brand_title_text_with_verified_icon.dart';
import 'package:pasal/common/widgets/texts/product_price_text.dart';
import 'package:pasal/common/widgets/texts/product_title_text.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/enums.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductMetaData extends StatelessWidget {
  const PProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale tag
            PRoundedContainer(
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
            const SizedBox(width: PSizes.spaceBtnItems),

            // Price
            Text('\$ 250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),

            const SizedBox(width: PSizes.spaceBtnItems),

            const PProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(height: PSizes.spaceBtnItems / 1.5),

        // Title
        const PProductTitleText(title: 'Green Nike Air Max 270'),
        const SizedBox(height: PSizes.spaceBtnItems / 1.5),

        // Stock Status
        Row(
          children: [
            const PProductTitleText(title: 'Status'),
            const SizedBox(width: PSizes.spaceBtnItems),
            Text('In Stock', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: PSizes.spaceBtnItems / 1.5),

        // Brand
        Row(
          children: [
            PCircularImage(
              image: PImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? PColors.white : PColors.black,
            ),
            const PBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
