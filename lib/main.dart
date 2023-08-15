import 'package:cwi_wiser/tokens/colors/color_helper.dart';
import 'package:cwi_wiser/tokens/colors/wiser_colors.dart';
import 'package:cwi_wiser/tokens/tokens.g.dart';
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
    return Tokens(
      tokens: DefaultTokens(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: WiserTheme.defaultTheme,
        home: const SplashScreen(),
      ),
    );
  }
}

class WiserTheme {
  static DefaultColorTokens colors = DefaultColorTokens();

  static ThemeData defaultTheme = ThemeData(
    primaryColor: colors.primaryMain,
    primarySwatch: ColorHelper.setMaterialColor(WiserColors.neutralShade),
  );
}
