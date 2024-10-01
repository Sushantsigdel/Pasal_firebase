import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PCircularIcon extends StatelessWidget {
  // Custom Circular Icon widget with a background color.

  // Properties :
  // Container width, height and background color
  // Icon size, color and onPressed function

  const PCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = PSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : PHelperFunctions.isDarkMode(context)
                ? PColors.black.withOpacity(0.9)
                : PColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
