import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/features/shop/order/widgets/orders_list.dart';
import 'package:pasal/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: PAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(PSizes.defaultSpace),

        // Orders
        child: POrderListItems(),
      ),
    );
  }
}
