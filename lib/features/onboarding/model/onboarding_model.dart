import 'package:flutter/material.dart';

class HeroBadge {
  final String text;
  final Alignment alignment;
  final Color background;
  final Color textColor;
  final IconData icon;
  final Color iconColor;

  const HeroBadge({
    required this.text,
    required this.alignment,
    required this.background,
    required this.textColor,
    required this.icon,
    required this.iconColor,
  });
}

class FooterItem {
  final IconData icon;
  final String text;

  const FooterItem({required this.icon, required this.text});
}

class OnboardingModel {
  final String title;
  final String description;
  final String buttonText;
  final String imagePath;
  final IconData fallbackIcon;
  final double aspectRatio;
  final bool showBack;
  final String? chipText;
  final String? stepLabel;
  final bool heroGradient;
  final List<HeroBadge> badges;
  final List<FooterItem> footerItems;

  const OnboardingModel({
    required this.title,
    required this.description,
    required this.buttonText,
    required this.imagePath,
    required this.fallbackIcon,
    required this.aspectRatio,
    this.showBack = false,
    this.chipText,
    this.stepLabel,
    this.heroGradient = false,
    this.badges = const [],
    this.footerItems = const [],
  });
}
