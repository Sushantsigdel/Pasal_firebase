import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pasal/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:pasal/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/features/personalization/screens/address/adress.dart';
import 'package:pasal/features/personalization/screens/profile/profile.dart';
import 'package:pasal/features/shop/cart/cart.dart';
import 'package:pasal/features/shop/order/order.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PPrimaryHeaderContainer(
              child: Column(
                children: [
                  PAppBar(
                      title: const Text('Account'),
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: PColors.white)),
                  const SizedBox(height: PSizes.spaceBtnSections),

                  // User Profile Card
                  PUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: PSizes.spaceBtnSections)
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(PSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const PSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: PSizes.spaceBtnItems),

                  PSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping addresses',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),

                  PSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      onTap: () => Get.to(() => const CartScreen()),
                      subTitle: 'Add, remove products and move to checkout'),

                  PSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-Progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),

                  const PSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Connected Banks',
                      subTitle: 'Manage your bank accounts'),

                  const PSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all available coupons'),

                  const PSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),

                  // App Settings
                  const SizedBox(height: PSizes.spaceBtnSections),
                  const PSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: PSizes.spaceBtnItems),
                  const PSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload your documents'),
                  PSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set recommendation based on location',
                      trailing: Switch(value: false, onChanged: (value) {})),
                  PSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result safe for all ages',
                      trailing: Switch(value: true, onChanged: (value) {})),
                  PSettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Images',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {})),

                  // Logout Button
                  const SizedBox(height: PSizes.spaceBtnSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: PSizes.spaceBtnSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
