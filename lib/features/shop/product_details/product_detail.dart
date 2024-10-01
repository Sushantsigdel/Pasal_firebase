import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/features/shop/product_details/widgets/product_attributes.dart';
import 'package:pasal/features/shop/product_details/widgets/product_detail_image_slider.dart';
import 'package:pasal/features/shop/product_details/widgets/product_meta_data.dart';
import 'package:pasal/features/shop/product_details/widgets/rating_share_widget.dart';
import 'package:pasal/features/shop/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:pasal/features/shop/product_reviews/product_reviews.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const PBottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const PProductImageSlider(),

            // Product Title and other product details
            Padding(
              padding: const EdgeInsets.only(
                  right: PSizes.defaultSpace,
                  left: PSizes.defaultSpace,
                  bottom: PSizes.defaultSpace),
              child: Column(
                children: [
                  // Ratings
                  const PRatingAndShare(),

                  // Price, Title, Stock & Brand
                  const PProductMetaData(),

                  // Attributes
                  const PProductAttributes(),
                  const SizedBox(height: PSizes.spaceBtnSections),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),

                  const SizedBox(height: PSizes.spaceBtnSections),

                  // Description
                  const PSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: PSizes.spaceBtnItems),
                  const ReadMoreText(
                    'This is a product descriptiom for Blue Nike Sleeve vest. There are more things that can be added but i am too lazy to so. Lazy coding is one thing and lazy person is another. I do both.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviees
                  const Divider(),
                  const SizedBox(height: PSizes.spaceBtnSections),
                  Row(
                    children: [
                      const PSectionHeading(
                        title: 'Reviews(616)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () => Get.to(const ProductReviewsScreen()),
                      )
                    ],
                  ),
                  const SizedBox(height: PSizes.spaceBtnItems),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
