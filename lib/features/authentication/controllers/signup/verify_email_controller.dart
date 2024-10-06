import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pasal/common/widgets/success_screen/success_screen.dart';
import 'package:pasal/data/repositories/authentication/authentication_repository.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:pasal/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // Send email whenever verify screen appears & set timer for auto redirect.
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // Send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      PLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please check your email to verify your account');
    } catch (e) {
      PLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // Timer to automatically redirect on Email verification screen
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: PImages.successfullyRegisterAnimation,
            title: PTexts.yourAccountCreatedTitle,
            subTitle: PTexts.yourAccountCreatedSubtitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  // Manually check if email is verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
          image: PImages.successfullyRegisterAnimation,
          title: PTexts.yourAccountCreatedTitle,
          subTitle: PTexts.yourAccountCreatedSubtitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
    }
  }
}
