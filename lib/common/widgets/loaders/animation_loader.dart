import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';

class PAnimationLoaderWidget extends StatelessWidget {
  // Default constructor for the PAnimationLoaderWidget.
  //
  // Parameters:
  //  - text: The message to be displayed in the animation.
  // - animation: The path to the Lottie animation file.
  // - showAction: Whether to show the action button or not.
  // - actionText: The text to be displayed on the action button.
  // - onActionPressed: Callback function to be called when the action button is pressed.

  const PAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: PSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: PSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style:
                        OutlinedButton.styleFrom(backgroundColor: PColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: PColors.light),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
