import 'dart:async';

import 'package:get/get.dart';

import '../../onboarding/view/onboarding_page.dart';

class SplashController extends GetxController {
  static const Duration splashDuration = Duration(milliseconds: 3500);

  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    _timer = Timer(splashDuration, () => Get.off(() => const OnboardingPage()));
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
