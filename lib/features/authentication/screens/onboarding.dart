import 'package:ecommerce_app/util/constants/image_strings.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/constants/texts.dart';
import 'package:ecommerce_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: ([
          // Horizontal scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    image: const AssetImage(EcommerceImages.onboardingImage1),
                    width: EcommerceHelperFunctions.screenWidth() * 0.8,
                    height: EcommerceHelperFunctions.screenHeight() * 0.6,
                  ),
                  Text(
                    EcommerceTexts.onboardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: EcommerceSizes.spaceBetweenItems,
                  ),
                  Text(
                    EcommerceTexts.onboardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )

          // Skip button

          // Dot Navigation smooth page indicator

          // circular button
        ]),
      ),
    );
  }
}
