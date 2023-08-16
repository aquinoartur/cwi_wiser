import 'package:cwi_wiser/core/helper/color_helper.dart';
import 'package:cwi_wiser/core/tokens.g.dart';
import 'package:flutter/material.dart';

class WiserTheme {
  static DefaultColorTokens colors = DefaultColorTokens();

  static ThemeData defaultTheme = ThemeData(
    primaryColor: colors.neutralShade,
    primarySwatch: ColorHelper.setMaterialColor(colors.neutralShade),
  );
}
