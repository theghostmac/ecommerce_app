import 'package:get/get.dart';


class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables.

  // Update the current index when page scroll
  void updatePageIndicator(index) {}

  // Jump to the specific dot selected page.
  void dotNavigationClick(index) {}

  // update current index and jump to next page.
  void nextPage() {}

  // update current index and jump to last page.
  void skipPage() {}
}
