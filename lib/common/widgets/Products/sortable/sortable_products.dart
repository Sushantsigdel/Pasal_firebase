import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/Products/product_cards/product_card_vertical.dart';
import 'package:pasal/common/widgets/layouts/grid_layout.dart';
import 'package:pasal/utils/constants/sizes.dart';

class PSortableProducts extends StatelessWidget {
  const PSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'Higher Price', 'Lower Price', 'Newest', 'Popular']
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: PSizes.spaceBtnSections),
        // Products
        PGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const PProductCardVertical())
      ],
    );
  }
}
