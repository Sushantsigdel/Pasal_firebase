import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/Products/product_cards/product_card_vertical.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/common/widgets/layouts/grid_layout.dart';
import 'package:pasal/features/shop/home/home.dart';
import 'package:pasal/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          PCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              PGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const PProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
