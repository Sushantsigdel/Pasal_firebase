import 'package:flutter/material.dart';
import 'package:pasal/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/device/device_utlity.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = PHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: PDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: PSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? PColors.light : PColors.dark, dotHeight: 6),
      ),
    );
  }
}
