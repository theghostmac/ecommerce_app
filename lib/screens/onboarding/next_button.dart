import 'package:ecommerce_app/screens/onboarding/onboarding_controller/onboard_control.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../util/constants/colors.dart';
import '../../util/constants/sizes.dart';
import '../../util/device/device_utility.dart';
import '../../util/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EcommerceHelperFunctions.isDarkMode(context);

    return Positioned(
      right: EcommerceSizes.defaultSpacing,
      bottom: EcommerceDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? EcommerceColors.primaryColor: Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
