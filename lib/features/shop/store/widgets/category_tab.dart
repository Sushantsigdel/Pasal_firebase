import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/product_cards/product_card_vertical.dart';
import 'package:pasal/common/widgets/brands/brand_showcase.dart';
import 'package:pasal/common/widgets/layouts/grid_layout.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';

class PCategoryTab extends StatelessWidget {
  const PCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                const PBranadShowcase(
                  images: [
                    PImages.productImage3,
                    PImages.productImage2,
                    PImages.productImage1,
                  ],
                ),

                // Products
                PSectionHeading(title: 'You might like', onPressed: () {}),
                const SizedBox(height: PSizes.spaceBtnItems),

                PGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const PProductCardVertical()),
                const SizedBox(height: PSizes.spaceBtnSections)
              ],
            ))
      ],
    );
  }
}
