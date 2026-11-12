import 'package:flutter/material.dart';

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
    heroGradient: true,
  ),

  // 2. Get Help When You're Stranded
  OnboardingModel(
    title: "Get Help When You're Stranded",
    description:
        'Request roadside assistance, mobile mechanic or tow truck anywhere, anytime.',
    buttonText: 'Next',
    imagePath: onboardingImage2,
    fallbackIcon: Icons.local_shipping_outlined,
    aspectRatio: 1.6,
    heroGradient: true,
  ),

  // 3. Find Nearby Workshops & Services
  OnboardingModel(
    title: 'Find Nearby Workshops & Services',
    description:
        'Discover trusted garages and car services near you in one place.',
    buttonText: 'Get Started',
    imagePath: onboardingImage3,
    fallbackIcon: Icons.map_outlined,
    aspectRatio: 1.1,
    heroGradient: true,
  ),
];
