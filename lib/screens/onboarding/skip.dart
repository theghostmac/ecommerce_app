import 'package:ecommerce_app/screens/onboarding/onboarding_controller/onboard_control.dart';
import 'package:flutter/material.dart';

import '../../util/constants/sizes.dart';
import '../../util/device/device_utility.dart';

class PositionedSkip extends StatelessWidget {
  const PositionedSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EcommerceDeviceUtility.getAppBarHeight(),
      right: EcommerceSizes.defaultSpacing,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}