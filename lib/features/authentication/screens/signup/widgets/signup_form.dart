import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/features/authentication/controllers/signup/signup_controller.dart';
import 'package:pasal/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';
import 'package:pasal/utils/validators/validation.dart';

class PSignupForm extends StatelessWidget {
  const PSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      PValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: PTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: PSizes.spaceBtnInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      PValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: PTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),

          const SizedBox(height: PSizes.spaceBtnInputFields),

          // Username
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                PValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
                labelText: PTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: PSizes.spaceBtnInputFields),

          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => PValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: PTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: PSizes.spaceBtnInputFields),

          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => PValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: PTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: PSizes.spaceBtnInputFields),

          // Password
          TextFormField(
            controller: controller.password,
            validator: (value) => PValidator.validatePassword(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: PTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: PSizes.spaceBtnSections,
          ),

          // Terms and Conditions checkbox
          const PTermsAndConditionCheckbox(),

          const SizedBox(height: PSizes.spaceBtnSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signUp(),
              child: const Text(PTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
