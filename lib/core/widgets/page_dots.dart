import 'package:flutter/material.dart';

import '../const/colors.dart';

class PageDots extends StatelessWidget {
  final int count;
  final int index;

  const PageDots({super.key, required this.count, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) {
        final isActive = i == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: isActive ? 22 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: isActive ? MyColors.dotActive : MyColors.dotInactive,
            borderRadius: BorderRadius.circular(3),
          ),
        );
      }),
    );
  }
}
