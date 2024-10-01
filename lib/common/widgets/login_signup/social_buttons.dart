import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';

class PSocialButtons extends StatelessWidget {
  const PSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: PColors.grey),
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
            width: PSizes.iconMd,
            height: PSizes.iconMd,
            image: AssetImage(PImages.google),
          ),
        ),
      ),
      const SizedBox(
        width: PSizes.spaceBtnItems,
      ),
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: PColors.grey),
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
            width: PSizes.iconMd,
            height: PSizes.iconMd,
            image: AssetImage(PImages.facebook),
          ),
        ),
      )
    ]);
  }
}
