import 'package:cwi_wiser/core/helper/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:wiser/tokens/tokens.dart';

class Wiser {
  Wiser._();

  static final Wiser instance = Wiser._();

  static ThemeData defaultTheme = ThemeData(
    primaryColor: WiserTokens.colors.neutralShade,
    primarySwatch: ColorHelper.setMaterialColor(WiserTokens.colors.neutralShade),
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
