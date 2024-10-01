import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const PAppBar(showBackArrow: true, title: Text('Add New Address')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              // Add new address form
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
              ),
              const SizedBox(height: PSizes.spaceBtnInputFields),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number'),
              ),
              const SizedBox(height: PSizes.spaceBtnInputFields),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: 'Street'),
                  )),
                  const SizedBox(width: PSizes.spaceBtnInputFields),
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.code),
                              labelText: 'Postal Code'))),
                ],
              ),
              const SizedBox(height: PSizes.spaceBtnInputFields),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_34),
                        labelText: 'City'),
                  )),
                  const SizedBox(width: PSizes.spaceBtnInputFields),
                  Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.activity),
                              labelText: 'State'))),
                ],
              ),
              const SizedBox(height: PSizes.spaceBtnInputFields),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
              const SizedBox(height: PSizes.defaultSpace),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
