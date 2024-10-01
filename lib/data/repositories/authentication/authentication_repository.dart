import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pasal/features/authentication/screens/login/login.dart';
import 'package:pasal/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  // Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Redirects user to the appropriate screen
  screenRedirect() async {
    // Local storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }
  /*  Email and password Authentication */

  // [EmailAuthentication] SignIn

  // [EmailAuthentication] REGISTER

  // [ReAuthentication] ReAuthenticate User

  // [EmailVerification] Mail Verification

  // [EmailAuthentication] Forgot Password

  /* Federated identity & social sign-in */

  // [GoogleAuthentication] Google SignIn

  // [FacebookAuthentication] Facebook SignIn

  /* Federated identity & social sign-in */

  // [LogoutUser] - valid for any authentication

  // [DeleteUser] - Remove user Auth and FireStore Account
}
