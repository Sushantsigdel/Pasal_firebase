import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/images/p_circular_image.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PAppBar(
          showBackArrow: true,
          title: Text('Profile'),
        ),
        // Body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [
                // Profile Picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const PCircularImage(
                        image: PImages.user,
                        width: 80,
                        height: 80,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Change Display Picture')),
                    ],
                  ),
                ),

                // Other Profile Details
                const SizedBox(height: PSizes.spaceBtnItems / 2),
                const Divider(),
                const SizedBox(height: PSizes.spaceBtnItems),
                const PSectionHeading(
                    title: 'Profile Information', showActionButton: false),
                const SizedBox(height: PSizes.spaceBtnItems),

                PProfileMenu(
                    title: 'Name', value: 'Sushant Sigdel', onPressed: () {}),
                PProfileMenu(
                    title: 'Username', value: 'mindgoesbrr', onPressed: () {}),

                const SizedBox(height: PSizes.spaceBtnItems),
                const Divider(),
                const SizedBox(height: PSizes.spaceBtnItems),

                // Account Details
                const PSectionHeading(
                    title: 'Account Information', showActionButton: false),
                const SizedBox(height: PSizes.spaceBtnItems),

                PProfileMenu(
                    title: 'User ID',
                    value: '616',
                    icon: Iconsax.copy,
                    onPressed: () {}),
                PProfileMenu(
                    title: 'E-Mail',
                    value: 'Spidey.616@marvel.universe',
                    onPressed: () {}),
                PProfileMenu(
                    title: 'Phone Number',
                    value: '+977 98-00000000',
                    onPressed: () {}),
                PProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
                PProfileMenu(
                    title: 'Date of Birth',
                    value: 'June 02 2002',
                    onPressed: () {}),

                const Divider(),
                const SizedBox(height: PSizes.spaceBtnItems),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Delete Account',
                        style: TextStyle(color: Colors.red)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
