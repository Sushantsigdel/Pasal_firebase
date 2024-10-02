import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:pasal/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:pasal/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:pasal/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:pasal/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: PImages.onBoardingImage1,
                title: PTexts.onBoardingSubtitle1,
                subTitle: PTexts.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: PImages.onBoardingImage2,
                title: PTexts.onBoardingSubtitle2,
                subTitle: PTexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: PImages.onBoardingImage3,
                title: PTexts.onBoardingSubtitle3,
                subTitle: PTexts.onBoardingSubtitle3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
