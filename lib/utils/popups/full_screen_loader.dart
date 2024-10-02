import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';
import 'package:pasal/common/widgets/loaders/animation_loader.dart';

class PFullScreenLoader {
  // Open a full screen loading dialog with a given message and animation
  // This does not return anything

  // Parameters
  // text - The message to be displayed in the loader
  // animation - The animation to be displayed in the loader

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: PHelperFunctions.isDarkMode(Get.context!)
              ? PColors.dark
              : PColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              PAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  // Close the full screen loading dialog
  // This does not return anything
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
