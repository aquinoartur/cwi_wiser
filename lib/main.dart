import 'package:cwi_wiser/tokens/colors/color_helper.dart';
import 'package:cwi_wiser/tokens/colors/wiser_colors.dart';
import 'package:flutter/material.dart';

import 'modules/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: WiserColors.neutralShade,
        primarySwatch: ColorHelper.setMaterialColor(WiserColors.neutralShade),
      ),
      home: const SplashScreen(),
    );
  }
}
