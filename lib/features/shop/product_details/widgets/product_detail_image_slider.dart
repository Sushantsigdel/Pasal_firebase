import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/common/widgets/images/p_rounded_image.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductImageSlider extends StatelessWidget {
  const PProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return PCurvedEdgeWidget(
      child: Container(
        color: dark ? PColors.darkGrey : PColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(PSizes.productImageRadius * 2),
                child: Image(image: AssetImage(PImages.productImage1)),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: PSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: PSizes.spaceBtnItems,
                  ),
                  itemBuilder: (_, index) => PRoundedImage(
                    width: 80,
                    backgroundColor: dark ? PColors.dark : PColors.white,
                    border: Border.all(color: PColors.primaryColor),
                    padding: const EdgeInsets.all(PSizes.sm),
                    imageUrl: PImages.productImage3,
                  ),
                ),
              ),
            ),
            // Appbar Icons
            const PAppBar(
              showBackArrow: true,
              actions: [PCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            )
          ],
        ),
      ),
    );
  }
}
