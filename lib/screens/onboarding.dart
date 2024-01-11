import 'package:ecommerce_app/util/constants/image_strings.dart';
import 'package:ecommerce_app/util/constants/texts.dart';
import 'package:flutter/material.dart';
import 'onboarding/dot_navigation.dart';
import 'onboarding/next_button.dart';
import 'onboarding/page.dart';
import 'onboarding/skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: ([
          // Horizontal scrollable pages
          PageView(
            children: const [
              OnboardingPage(
                image: EcommerceImages.onboardingImage1,
                title: EcommerceTexts.onboardingTitle1,
                subTitle: EcommerceTexts.onboardingSubTitle1,
              ),
              OnboardingPage(
                image: EcommerceImages.onboardingImage2,
                title: EcommerceTexts.onboardingTitle2,
                subTitle: EcommerceTexts.onboardingSubTitle2,
              ),
              OnboardingPage(
                image: EcommerceImages.onboardingImage3,
                title: EcommerceTexts.onboardingTitle3,
                subTitle: EcommerceTexts.onboardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          const PositionedSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          // Circular Button
          const OnboardingNextButton(),
        ]),
      ),
    );
  }
}
