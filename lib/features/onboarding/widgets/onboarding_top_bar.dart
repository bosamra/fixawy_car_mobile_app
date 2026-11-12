import 'package:flutter/material.dart';

import '../../../core/const/colors.dart';
import '../../../core/widgets/status_chip.dart';
import '../model/onboarding_model.dart';

class OnboardingTopBar extends StatelessWidget {
  final OnboardingModel model;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  const OnboardingTopBar({
    super.key,
    required this.model,
    required this.onBack,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (model.showBack)
          _BackButton(onTap: onBack)
        else if (model.chipText != null)
          StatusChip(text: model.chipText!),
        const Spacer(),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  final VoidCallback onTap;

  const _BackButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: const Icon(Icons.arrow_back, size: 18, color: MyColors.textDark),
      ),
    );
  }
}
