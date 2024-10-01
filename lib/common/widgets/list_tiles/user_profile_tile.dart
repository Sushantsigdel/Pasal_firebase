import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/images/p_circular_image.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';

class PUserProfileTile extends StatelessWidget {
  const PUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const PCircularImage(
        image: PImages.user,
        width: 50,
        height: 50,
      ),
      title: Text('Sushant Sigdel',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: PColors.white)),
      subtitle: Text('sushantsigdel123@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: PColors.white)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: PColors.white),
      ),
    );
  }
}
