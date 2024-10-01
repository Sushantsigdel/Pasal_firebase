import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/images/p_rounded_image.dart';
import 'package:pasal/common/widgets/texts/p_brand_title_text_with_verified_icon.dart';
import 'package:pasal/common/widgets/texts/product_title_text.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PCartItem extends StatelessWidget {
  const PCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        PRoundedImage(
          imageUrl: PImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(PSizes.sm),
          backgroundColor: dark ? PColors.darkGrey : PColors.light,
        ),
        const SizedBox(width: PSizes.spaceBtnItems),
        // Title, Price, Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
              child:
                  PProductTitleText(title: 'Green sports shoes', maxLines: 1),
            ),
            // Attributes
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'Size', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        )
      ],
    );
  }
}
