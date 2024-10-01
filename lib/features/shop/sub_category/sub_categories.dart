import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/product_cards/product_card_horizontal.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/images/p_rounded_image.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const PRoundedImage(
                  width: double.infinity,
                  imageUrl: PImages.promoBanner3,
                  applyImageRadius: true),
              const SizedBox(height: PSizes.spaceBtnSections),

              // Sub categories
              Column(
                children: [
                  // heading
                  PSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: PSizes.spaceBtnItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: PSizes.spaceBtnItems,
                            ),
                        itemBuilder: (context, index) =>
                            const PProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
