import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/onboarding_data.dart';
import '../model/onboarding_model.dart';

class OnboardingController extends GetxController {
  OnboardingController({this.onFinished});

  final VoidCallback? onFinished;
  final List<OnboardingModel> pages = onboardingPages;
  final PageController pageController = PageController();
  final RxInt currentIndex = 0.obs;

  bool get isLastPage => currentIndex.value == pages.length - 1;

  void onPageChanged(int index) => currentIndex.value = index;

  void goBack() => _animateTo(currentIndex.value - 1);

  void next() {
    if (isLastPage) {
      finish();
    } else {
      _animateTo(currentIndex.value + 1);
    }
  }

  void skip() => finish();

  void finish() => onFinished?.call();

  void _animateTo(int index) {
    if (index < 0 || index >= pages.length) return;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
