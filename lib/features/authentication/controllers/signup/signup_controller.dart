import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/data/repositories/authentication/authentication_repository.dart';
import 'package:pasal/data/repositories/user/user_repository.dart';
import 'package:pasal/features/authentication/screens/signup/verify_email.dart';
import 'package:pasal/features/personalization/models/user_model.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/helpers/network_manager.dart';
import 'package:pasal/utils/popups/full_screen_loader.dart';
import 'package:pasal/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final privacyPolicy = false.obs; // Privacy Policy checkbox

  final hidePassword = true.obs; // Hide password

  final email = TextEditingController(); // Controller for email input
  final firstName = TextEditingController(); // Controller for firstname input
  final lastName = TextEditingController(); // Controller for lastname input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final phoneNumber =
      TextEditingController(); // Controller for phone number input

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

// Signup
  void signUp() async {
    try {
      // Loader
      PFullScreenLoader.openLoadingDialog(
          'We are processing your information...', PImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loader
        PFullScreenLoader.stopLoading();
        return;
      }
      ;

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove loader
        PFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy checkbox
      if (!privacyPolicy.value) {
        PLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to proceed, you must have to read accept the privacy policy & terms of use');
        return;
      }

      // Register User in firebase authentication and save user in the firestore
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Auth and user data in local storage
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        email: email.text.trim(),
        username: username.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove loader
      PFullScreenLoader.stopLoading();

      // Show Success message
      PLoaders.successSnackBar(
          title: 'Welcome ${newUser.fullName}',
          message: 'Your account has been created successfully');

      // Redirect to verify email screen
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      // Remove loader
      PFullScreenLoader.stopLoading();

      // Show Error message to the user
      PLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
