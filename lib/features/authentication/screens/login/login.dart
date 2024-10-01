import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/common/styles/spacing_styles.dart ';
import 'package:pasal/common/widgets/login_signup/form_divider.dart';
import 'package:pasal/common/widgets/login_signup/social_buttons.dart';
import 'package:pasal/features/authentication/screens/login/widgets/login_form.dart';
import 'package:pasal/features/authentication/screens/login/widgets/login_header.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and Subtitle
              const PLoginHeader(),

              // Form field
              const PLoginForm(),

              // Divider
              PFormDivider(dividerText: PTexts.orSignInWith.capitalize!),
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
