import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/Products/ratings/rating_indicator.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(PImages.userProfileImage1)),
                const SizedBox(width: PSizes.spaceBtnItems),
                Text('Saju Poudel',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: PSizes.spaceBtnItems),

        // Review
        Row(
          children: [
            const PRatingBarIndicator(rating: 4),
            const SizedBox(width: PSizes.spaceBtnItems),
            Text('01 Jan 2021', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        const SizedBox(height: PSizes.spaceBtnItems),
        const ReadMoreText(
          'This is a very good product. I am very happy with the product. I will recommend this product to everyone. Sometimes I let my intruisive thought win and start reviewbomb products but this time I wrote a very honest review you better read it.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: PColors.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: PColors.primaryColor),
        ),
        const SizedBox(height: PSizes.spaceBtnItems),

        // Review Reply
        PRoundedContainer(
          backgroundColor: dark ? PColors.darkGrey : PColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(PSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pasale Dai',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Jan 2021',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: PSizes.spaceBtnItems),
                const ReadMoreText(
                  'I am glad you liked the product. We are always here to help you. If you have any queries, feel free to ask. Don`t let your intrusive thoughts win. Stay sigma.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: PColors.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: PColors.primaryColor),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: PSizes.spaceBtnSections),
      ],
    );
  }
}
