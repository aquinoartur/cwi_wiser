import 'package:cwi_wiser/core/helper/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:wiser/tokens/tokens.g.dart';

class WiserTheme {
  WiserTheme._();

  static final WiserTheme instance = WiserTheme._();

  static DefaultColorTokens colors = DefaultColorTokens();
  static DefaultSpacingTokens spacing = DefaultSpacingTokens();

  static ThemeData defaultTheme = ThemeData(
    primaryColor: colors.neutralShade,
    primarySwatch: ColorHelper.setMaterialColor(colors.neutralShade),
    tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(
        fontSize: 12.5,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12.5,
      ),
    ),
  );
}
