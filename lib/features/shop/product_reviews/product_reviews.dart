import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/ratings/rating_indicator.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/features/shop/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:pasal/features/shop/product_reviews/widgets/user_review_card.dart';
import 'package:pasal/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: const PAppBar(
        title: Text('Product Reviews'),
        showBackArrow: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same product.'),
              const SizedBox(height: PSizes.spaceBtnItems),

              // Overall Product Ratings
              const POverallProductRating(),
              const PRatingBarIndicator(rating: 4.8),
              Text('616', style: Theme.of(context).textTheme.bodySmall),

              const SizedBox(height: PSizes.spaceBtnItems),

              // User Reviews
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
