import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:pasal/features/authentication/screens/signup/signup.dart';
import 'package:pasal/navigation_menu.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class PLoginForm extends StatelessWidget {
  const PLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: PSizes.spaceBtnSections),
        child: Column(
          children: [
            // Email field
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: PTexts.email),
            ),
            const SizedBox(height: PSizes.spaceBtnInputFields),

            // Password field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: PTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: PSizes.spaceBtnInputFields / 2),

            // Remember me and Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(PTexts.rememberMe),
                  ],
                ),
                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(PTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: PSizes.spaceBtnSections),
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(PTexts.signIn),
              ),
            ),

            const SizedBox(height: PSizes.spaceBtnItems),

            // Create Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(PTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
