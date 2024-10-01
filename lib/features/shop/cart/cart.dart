import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/cart/add_remove_button.dart';
import 'package:pasal/common/widgets/Products/cart/cart_icon.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/texts/product_price_text.dart';
import 'package:pasal/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) =>
              const SizedBox(height: PSizes.spaceBtnSections),
          itemCount: 10,
          itemBuilder: (_, index) => const Column(
            children: [
              PCartItem(),
              SizedBox(height: PSizes.spaceBtnItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Extra space
                      SizedBox(width: 70),
                      // Add Remove Buttons
                      PProductQuantityWithAddandRemoveButton(),
                    ],
                  ),
                  PProductPriceText(price: '420'),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$420.0')),
      ),
    );
  }
}
