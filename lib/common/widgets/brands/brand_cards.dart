import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/images/p_circular_image.dart';
import 'package:pasal/common/widgets/texts/p_brand_title_text_with_verified_icon.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/enums.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PBrandCard extends StatelessWidget {
  const PBrandCard({
    super.key,
    this.showBorder = false,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PRoundedContainer(
        padding: const EdgeInsets.all(PSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: PCircularImage(
                isNetworkImage: false,
                image: PImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: PHelperFunctions.isDarkMode(context)
                    ? PColors.white
                    : PColors.black,
              ),
            ),
            const SizedBox(width: PSizes.spaceBtnItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PBrandTitleWithVerifiedIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
