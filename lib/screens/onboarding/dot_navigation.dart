import 'package:ecommerce_app/screens/onboarding/onboarding_controller/onboard_control.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../util/constants/colors.dart';
import '../../util/constants/sizes.dart';
import '../../util/device/device_utility.dart';
import '../../util/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = EcommerceHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: EcommerceDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: EcommerceSizes.defaultSpacing,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? EcommerceColors.light: EcommerceColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
