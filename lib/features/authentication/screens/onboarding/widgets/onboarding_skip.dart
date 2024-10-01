import 'package:flutter/material.dart';
import 'package:pasal/features/authentication/controllers/onboarding_controller.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/device/device_utlity.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: PDeviceUtils.getAppBarHeight(),
      right: PSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip')),
    );
  }
}
