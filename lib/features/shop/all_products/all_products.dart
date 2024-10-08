import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/sortable/sortable_products.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PSizes.defaultSpace),
          child: PSortableProducts(),
        ),
      ),
    );
  }
}
