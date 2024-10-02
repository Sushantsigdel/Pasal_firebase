import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/helpers/network_manager.dart';
import 'package:pasal/utils/popups/full_screen_loader.dart';
import 'package:pasal/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

// Variables

  final email = TextEditingController(); // Controller for email input
  final firstName = TextEditingController(); // Controller for firstname input
  final lastName = TextEditingController(); // Controller for lastname input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final phoneNumber =
      TextEditingController(); // Controller for phone number input

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

// Signup
  Future<void> signUp() async {
    try {
      // Loader
      PFullScreenLoader.openLoadingDialog(
          'We are processing your information...', PImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Show error message
        PFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Validation Failed
        PFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy checkbox

      // Register User in firebase authentication and save user in the firestore

      // Save Auth and user data in local storage

      // Show Success message

      // Redirect to verify email screen
    } catch (e) {
      // Show Error message to the user
      PLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove loader
      PFullScreenLoader.stopLoading();
    }
  }
}
