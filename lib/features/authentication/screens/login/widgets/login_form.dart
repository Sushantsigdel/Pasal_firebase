import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/features/authentication/controllers/login/login_controller.dart';
import 'package:pasal/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:pasal/features/authentication/screens/signup/signup.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/utils/validators/validation.dart';

class PLoginForm extends StatelessWidget {
  const PLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: PSizes.spaceBtnSections),
        child: Column(
          children: [
            // Email field
            TextFormField(
              controller: controller.email,
              validator: (value) => PValidator.validateEmail(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: PTexts.email),
            ),
            const SizedBox(height: PSizes.spaceBtnInputFields),

            // Password field
            // Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) =>
                    PValidator.validateEmptyText('Password', value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: PTexts.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye))),
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
                    Obx(
                      () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value),
                    ),
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
                onPressed: () => controller.emailAndPasswordSignIn(),
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
