import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pasal/data/repositories/authentication/authentication_repository.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/helpers/network_manager.dart';
import 'package:pasal/utils/popups/full_screen_loader.dart';
import 'package:pasal/utils/popups/loaders.dart';

class LoginController extends GetxController {
  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // Email and password Sign In
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      PFullScreenLoader.openLoadingDialog(
          'Logging you in...', PImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Stop loading
        PFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        // Stop loading
        PFullScreenLoader.stopLoading();
        return;
      }

      // Save data if remember me is checked
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }
      // Login user using Email and Password
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Stop loading
      PFullScreenLoader.stopLoading();

      // Redirect user to appropriate screen
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Stop loading
      PFullScreenLoader.stopLoading();
      PLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
