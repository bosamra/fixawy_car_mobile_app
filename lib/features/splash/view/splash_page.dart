import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/colors.dart';
import '../../../core/const/image_paths.dart';
import '../../../core/widgets/safe_asset_image.dart';
import '../controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      backgroundColor: MyColors.navy,
      body: Stack(
        children: [
          const Positioned.fill(child: _GlowBackground()),
          SafeArea(
            child: Stack(
              children: [
                const Positioned(top: 12, right: 24, child: _LocationTag()),
                const Center(child: _Brand()),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 48,
                  child: _Loader(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GlowBackground extends StatelessWidget {
  const _GlowBackground();

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, 0.45),
          radius: 0.7,
          colors: [Color(0x14FFC61A), Colors.transparent],
        ),
      ),
    );
  }
}

class _LocationTag extends StatelessWidget {
  const _LocationTag();

  @override
  Widget build(BuildContext context) {
    return const Row();
  }
}

class _Brand extends StatelessWidget {
  const _Brand();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: const Color(0xFF16305A),
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0x33FFFFFF), width: 2),
          ),
          child: ClipOval(
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: SafeAssetImage(
                path: splashLogoImage,
                fallbackIcon: Icons.car_repair,
                iconColor: MyColors.accentYellow,
                fallbackBackground: Colors.transparent,
                iconSize: 56,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Fixawy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Your Car Care,',
          style: TextStyle(color: Color(0xCCFFFFFF), fontSize: 20),
        ),
        const SizedBox(height: 6),
        const Text(
          'Wherever You Are.',
          style: TextStyle(color: Color(0xCCFFFFFF), fontSize: 22),
        ),
      ],
    );
  }
}

class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          width: 26,
          height: 26,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: MyColors.accentYellow,
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          'LOADING...',
          style: TextStyle(
            color: Color(0xB3FFFFFF),
            fontSize: 11,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
