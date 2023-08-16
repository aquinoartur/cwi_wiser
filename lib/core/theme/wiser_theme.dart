import 'package:cwi_wiser/core/helper/color_helper.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.g.dart';

class WiserTheme {
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
