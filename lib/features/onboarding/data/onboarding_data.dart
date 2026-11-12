import 'package:flutter/material.dart';

import '../../../core/const/colors.dart';
import '../../../core/const/image_paths.dart';
import '../model/onboarding_model.dart';

const List<OnboardingModel> onboardingPages = [
  // 1. Book Your Car Maintenance Easily
  OnboardingModel(
    title: 'Book Your Car Maintenance Easily',
    description:
        'Find the best workshops and schedule your service in just a few taps.',
    buttonText: 'Next',
    imagePath: onboardingImage1,
    fallbackIcon: Icons.storefront_outlined,
    aspectRatio: 1.5,
    chipText: 'Fixawy',
  ),

  // 2. Get Help When You're Stranded
  OnboardingModel(
    title: "Get Help When You're Stranded",
    description:
        'Request roadside assistance, mobile mechanic or tow truck anywhere, anytime.',
    buttonText: 'Next →',
    imagePath: onboardingImage2,
    fallbackIcon: Icons.local_shipping_outlined,
    aspectRatio: 1.6,
    showBack: true,
    badges: [
      HeroBadge(
        text: '< 15 min ETA',
        alignment: Alignment.topRight,
        background: MyColors.navy,
        textColor: Colors.white,
        icon: Icons.bolt,
        iconColor: MyColors.accentYellow,
      ),
      HeroBadge(
        text: '24/7 Dispatch Ready',
        alignment: Alignment.bottomLeft,
        background: Colors.white,
        textColor: MyColors.textDark,
        icon: Icons.circle,
        iconColor: MyColors.accentYellow,
      ),
    ],
  ),

  // 3. Find Nearby Workshops & Services
  OnboardingModel(
    title: 'Find Nearby Workshops & Services',
    description:
        'Discover trusted garages and car services near you in one place.',
    buttonText: 'Get Started →',
    imagePath: onboardingImage3,
    fallbackIcon: Icons.map_outlined,
    aspectRatio: 1.1,
    chipText: 'Fixawy Rescue & Care',
    stepLabel: 'STEP 3 OF 3 • NETWORK DISCOVERY',
    heroGradient: true,
    badges: [
      HeroBadge(
        text: 'Nasr City, Cairo',
        alignment: Alignment.topRight,
        background: Colors.white,
        textColor: MyColors.textDark,
        icon: Icons.location_on,
        iconColor: Colors.redAccent,
      ),
      HeroBadge(
        text: '500+ Verified Garages',
        alignment: Alignment.bottomLeft,
        background: Colors.white,
        textColor: MyColors.textDark,
        icon: Icons.settings,
        iconColor: MyColors.accentYellow,
      ),
    ],
  ),
];
