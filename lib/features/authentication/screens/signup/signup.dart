import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/common/widgets/login_signup/form_divider.dart';
import 'package:pasal/common/widgets/login_signup/social_buttons.dart';
import 'package:pasal/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(PTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: PSizes.spaceBtnSections),
              // form
              const PSignupForm(),
              const SizedBox(height: PSizes.spaceBtnSections),
              // Dividers
              PFormDivider(dividerText: PTexts.orSignUpWith.capitalize!),
              const SizedBox(height: PSizes.spaceBtnSections),

              // Social Media Buttons
              const PSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
