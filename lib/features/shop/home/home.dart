import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/common/widgets/Products/product_cards/product_card_vertical.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pasal/common/widgets/layouts/grid_layout.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/features/shop/all_products/all_products.dart';
import 'package:pasal/features/shop/home/widgets/home_appbar.dart';
import 'package:pasal/features/shop/home/widgets/home_categories.dart';
import 'package:pasal/features/shop/home/widgets/promo_slider.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const PPrimaryHeaderContainer(
                child: Column(
              children: [
                // Appbar
                PHomeAppBar(),
                SizedBox(height: PSizes.spaceBtnSections),

                // Searchbar
                PSearchContainer(text: 'Search for products'),
                SizedBox(height: PSizes.spaceBtnSections),

                // Categories
                PHomeCategories(),
                SizedBox(height: PSizes.spaceBtnSections),
              ],
            )),

            Padding(
              padding: const EdgeInsets.all(PSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const PPromoSlider(banners: [
                    PImages.promoBanner1,
                    PImages.promoBanner2,
                    PImages.promoBanner3
                  ]),
                  const SizedBox(height: PSizes.spaceBtnSections),

                  // Heading
                  PSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: PSizes.spaceBtnItems),

                  // Popular Products
                  PGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const PProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
