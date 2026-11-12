import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/const/colors.dart';
import 'features/splash/view/splash_page.dart';

void main() {
  runApp(const FixawyApp());
}

class FixawyApp extends StatelessWidget {
  const FixawyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fixawy',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: MyColors.navy,
        scaffoldBackgroundColor: MyColors.background,
      ),
      home: const SplashPage(),
    );
  }
}
