import 'package:ecommerce_app/util/constants/image_strings.dart';
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
                    height: EcommerceHelperFunctions.screenWidth() * 0.6,
                  ),
                  Text(
                    EcommerceTexts.onboardingTitle1, style: ,)
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
