import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/features/authentication/controllers/signup/signup_controller.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PTermsAndConditionCheckbox extends StatelessWidget {
  const PTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = PHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value)),
        ),
        const SizedBox(width: PSizes.spaceBtnItems),
        Text.rich(TextSpan(
          children: [
            TextSpan(
                text: PTexts.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${PTexts.termsOfService} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? PColors.white : PColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? PColors.white : PColors.primaryColor)),
            TextSpan(
                text: '${PTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: PTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? PColors.white : PColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? PColors.white : PColors.primaryColor)),
          ],
        ))
      ],
    );
  }
}
