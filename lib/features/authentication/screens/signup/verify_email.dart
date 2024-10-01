import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/common/widgets/success_screen/success_screen.dart';
import 'package:pasal/features/authentication/screens/login/login.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(PImages.deliveredEmailIllustration),
                width: PHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: PSizes.spaceBtnSections),

              // Title & Subtitle
              Text(PTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: PSizes.spaceBtnItems),
              Text('info@pasal.com',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: PSizes.spaceBtnItems),
              Text(PTexts.confirmEmailSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: PSizes.spaceBtnSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                          () => SuccessScreen(
                            image: PImages.staticSuccessIllustration,
                            title: PTexts.yourAccountCreatedTitle,
                            subTitle: PTexts.yourAccountCreatedSubtitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          ),
                        ),
                    child: const Text(PTexts.pContinue)),
              ),
              const SizedBox(height: PSizes.spaceBtnItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(PTexts.resendEmail)))
            ],
          ),
        ),
      ),
    );
  }
}
