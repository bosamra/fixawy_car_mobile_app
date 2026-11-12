import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/colors.dart';
import '../../../core/widgets/page_dots.dart';
import '../../../core/widgets/primary_btn.dart';
import '../controller/onboarding_controller.dart';
import '../model/onboarding_model.dart';
import '../widgets/onboarding_hero.dart';
import '../widgets/onboarding_top_bar.dart';

class OnboardingPage extends StatelessWidget {
  final VoidCallback? onFinished;

  const OnboardingPage({super.key, this.onFinished});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(OnboardingController(onFinished: onFinished));

    return Scaffold(
      backgroundColor: MyColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: c.pageController,
                onPageChanged: c.onPageChanged,
                itemCount: c.pages.length,
                itemBuilder: (_, i) => _Slide(model: c.pages[i], controller: c),
              ),
            ),
            Obx(
              () => _BottomArea(
                model: c.pages[c.currentIndex.value],
                index: c.currentIndex.value,
                count: c.pages.length,
                onNext: c.next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final OnboardingModel model;
  final OnboardingController controller;

  const _Slide({required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 12),
          OnboardingTopBar(
            model: model,
            onBack: controller.goBack,
            onSkip: controller.skip,
          ),
          Expanded(
            child: Center(child: OnboardingHero(model: model)),
          ),
          if (model.stepLabel != null) ...[
            Text(
              model.stepLabel!,
              style: const TextStyle(
                color: MyColors.textGray,
                fontSize: 11,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
          ],
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: MyColors.textDark,
              fontSize: 24,
              fontWeight: FontWeight.w800,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              model.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: MyColors.textGray,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _BottomArea extends StatelessWidget {
  final OnboardingModel model;
  final int index;
  final int count;
  final VoidCallback onNext;

  const _BottomArea({
    required this.model,
    required this.index,
    required this.count,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PageDots(count: count, index: index),
          const SizedBox(height: 20),
          PrimaryBtn.yellowBtn(model.buttonText, onTap: onNext),
          if (model.footerItems.isNotEmpty) ...[
            const SizedBox(height: 14),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              children: model.footerItems
                  .map(
                    (f) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(f.icon, size: 13, color: MyColors.textGray),
                        const SizedBox(width: 4),
                        Text(
                          f.text,
                          style: const TextStyle(
                            color: MyColors.textGray,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}
