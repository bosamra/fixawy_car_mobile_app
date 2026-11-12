import 'package:flutter/material.dart';

import '../const/colors.dart';

class PrimaryBtn extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final VoidCallback? onTap;
  final double height;
  final FontWeight fontWeight;

  const PrimaryBtn._({
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.onTap,
    this.height = 56,
    this.fontWeight = FontWeight.normal,
  });

  factory PrimaryBtn.greenBtn(String text, {VoidCallback? onTap}) =>
      PrimaryBtn._(
        backgroundColor: MyColors.primaryColor,
        textColor: Colors.white,
        text: text,
        onTap: onTap,
      );

  factory PrimaryBtn.whiteBtn(String text, {VoidCallback? onTap}) =>
      PrimaryBtn._(
        backgroundColor: Colors.white,
        textColor: Colors.black,
        text: text,
        onTap: onTap,
      );

  factory PrimaryBtn.yellowBtn(String text, {VoidCallback? onTap}) =>
      PrimaryBtn._(
        backgroundColor: MyColors.accentYellow,
        textColor: MyColors.textDark,
        text: text,
        onTap: onTap,
        height: 52,
        fontWeight: FontWeight.w600,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
