import 'package:flutter/material.dart';

import '../../../core/widgets/safe_asset_image.dart';
import '../model/onboarding_model.dart';

class OnboardingHero extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingHero({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: model.heroGradient ? null : const Color(0xCCFFFFFF),
          gradient: model.heroGradient
              ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFFFF3CC), Color(0xFFEAF2FF)],
                )
              : null,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: Colors.white, width: 1.5),
          boxShadow: const [
            BoxShadow(color: Color(0x14000000), blurRadius: 24, offset: Offset(0, 8)),
          ],
        ),
        child: AspectRatio(
          aspectRatio: model.aspectRatio,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: SafeAssetImage(
                    path: model.imagePath,
                    fallbackIcon: model.fallbackIcon,
                  ),
                ),
              ),
              ...model.badges.map(
                (b) => Align(
                  alignment: b.alignment,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: _Badge(badge: b),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final HeroBadge badge;

  const _Badge({required this.badge});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: badge.background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Color(0x1F000000), blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(badge.icon, size: 12, color: badge.iconColor),
          const SizedBox(width: 6),
          Text(
            badge.text,
            style: TextStyle(
              color: badge.textColor,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
