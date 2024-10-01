import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PLoginHeader extends StatelessWidget {
  const PLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        height: 120,
        image: AssetImage(dark ? PImages.lightAppLogo : PImages.darkAppLogo),
      ),
      Text(PTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: PSizes.sm),
      Text(PTexts.loginSubtitle, style: Theme.of(context).textTheme.bodyMedium),
      const SizedBox(width: PSizes.spaceBtnSections),
    ]);
  }
}
