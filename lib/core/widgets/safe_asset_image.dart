import 'package:flutter/material.dart';

import '../const/colors.dart';

/// Shows an asset image; if the file is missing it shows a styled placeholder
/// so the layout still matches the design until the real artwork is added.
class SafeAssetImage extends StatelessWidget {
  final String path;
  final IconData fallbackIcon;
  final Color iconColor;
  final Color fallbackBackground;
  final double iconSize;
  final BoxFit fit;

  const SafeAssetImage({
    super.key,
    required this.path,
    required this.fallbackIcon,
    this.iconColor = MyColors.dotActive,
    this.fallbackBackground = const Color(0xFFE6EEF9),
    this.iconSize = 56,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: fit,
      errorBuilder: (context, error, stackTrace) => Container(
        color: fallbackBackground,
        alignment: Alignment.center,
        child: Icon(fallbackIcon, size: iconSize, color: iconColor),
      ),
    );
  }
}
