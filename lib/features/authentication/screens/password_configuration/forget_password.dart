import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';

import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            Text(PTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),

            const SizedBox(height: PSizes.spaceBtnItems),

            Text(
              PTexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: PSizes.spaceBtnSections),

            // text fields
            TextFormField(
              decoration: const InputDecoration(
                labelText: PTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: PSizes.spaceBtnSections),
            // submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(PTexts.submit))),
          ],
        ),
      ),
    );
  }
}
