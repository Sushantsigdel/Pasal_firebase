import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/sortable/sortable_products.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/brands/brand_cards.dart';
import 'package:pasal/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PAppBar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              PBrandCard(showBorder: true),
              SizedBox(height: PSizes.spaceBtnSections),
              PSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
