import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/chips/choice_chip.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/texts/product_price_text.dart';
import 'package:pasal/common/widgets/texts/product_title_text.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductAttributes extends StatelessWidget {
  const PProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected attributes, pricing and description
        PRoundedContainer(
          padding: const EdgeInsets.all(PSizes.md),
          backgroundColor: dark ? PColors.darkerGrey : PColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock Status
              Row(
                children: [
                  const PSectionHeading(
                    title: 'Variations',
                    showActionButton: false,
                  ),
                  const SizedBox(width: PSizes.spaceBtnItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const PProductTitleText(
                              title: 'Price:', smallsize: true),
                          // Actual Price
                          Text('\$ 25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: PSizes.spaceBtnItems),

                          // Sale Price
                          const PProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const PProductTitleText(
                              title: 'Stock :', smallsize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium)
                        ],
                      )
                    ],
                  ),
                ],
              ),

              // Variation Description
              // const PProductTitleText(
              //   title:
              //       'This is the description of the Product and it can go upto 4 lines maximum.',
              //   smallsize: true,
              //   maxLines: 4,
              // ),
            ],
          ),
        ),
        const SizedBox(height: PSizes.spaceBtnItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: PSizes.spaceBtnItems / 2),
            Wrap(
              spacing: 8,
              children: [
                PChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                PChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                PChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(height: PSizes.spaceBtnItems / 2),
            Wrap(
              spacing: 8,
              children: [
                PChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                PChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                PChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
