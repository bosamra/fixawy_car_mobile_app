import 'package:flutter/material.dart';

import '../const/colors.dart';

class StatusChip extends StatelessWidget {
  final String text;
  final Color background;
  final Color textColor;
  final Color dotColor;

  const StatusChip({
    super.key,
    required this.text,
    this.background = Colors.white,
    this.textColor = MyColors.textDark,
    this.dotColor = MyColors.accentYellow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Color(0x14000000), blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: textColor),
          ),
        ],
      ),
    );
  }
}
