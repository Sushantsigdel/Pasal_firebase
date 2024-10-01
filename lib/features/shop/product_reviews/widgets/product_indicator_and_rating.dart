import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/device/device_utlity.dart';

class PRatingProgressIndicator extends StatelessWidget {
  const PRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 9,
          child: SizedBox(
            width: PDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: PColors.grey,
              valueColor: const AlwaysStoppedAnimation(PColors.primaryColor),
            ),
          ),
        )
      ],
    );
  }
}
