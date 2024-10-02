import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/bindings/general_bindings.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/theme/theme.dart';
//  using this class to setup themes, initial Bindings, any animations, or any other initial setup

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      initialBinding: GeneralBindings(),

      //  Simple loader or circular progress indicator
      home: const Scaffold(
        backgroundColor: PColors.primaryColor,
        body: Center(
          child: CircularProgressIndicator(
            color: PColors.white,
          ),
        ),
      ),
    );
  }
}
