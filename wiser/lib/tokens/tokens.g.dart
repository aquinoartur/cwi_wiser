/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
/// Figma2Flutter
/// *****************************************************

library tokens;

import 'package:flutter/material.dart';

part 'tokens_extra.g.dart';

abstract class ITokens {
  ColorTokens get color;
  SpacingTokens get spacing;
  TextStyleTokens get textStyle;
}

abstract class ColorTokens {
  Color get neutralShade;
  Color get neutralMain;
  Color get neutralTint;
  Color get neutralConcrete;
  Color get primaryShade;
  Color get primaryMain;
  Color get primaryTint;
  Color get primaryXtint;
  Color get successShade;
  Color get successMain;
  Color get successTint;
  Color get warningShade;
  Color get warningMain;
  Color get warningTint;
  Color get dangerShade;
  Color get dangerMain;
  Color get dangerTint;
}

abstract class SpacingTokens {
  EdgeInsets get spacingXxSmall;
  EdgeInsets get spacingXSmall;
  EdgeInsets get spacingSmall;
  EdgeInsets get spacingMedium;
  EdgeInsets get spacingBig;
  EdgeInsets get spacingXBig;
  EdgeInsets get spacingXxBig;
  EdgeInsets get spacingXxxBig;
  EdgeInsets get spacingLarge;
  EdgeInsets get spacingXLarge;
  EdgeInsets get spacingXxLarge;
  EdgeInsets get spacingXxxLarge;
  EdgeInsets get spacingHuge;
  EdgeInsets get spacingXHuge;
  EdgeInsets get spacingXxHuge;
  EdgeInsets get spacingXxxHuge;
}

abstract class TextStyleTokens {
  TextStyle get heading1;
  TextStyle get heading2;
  TextStyle get heading3;
  TextStyle get heading4;
  TextStyle get heading5;
  TextStyle get paragraph;
  TextStyle get paragraphCopy;
}

class DefaultTokens extends ITokens {
  @override
  ColorTokens get color => DefaultColorTokens();
  @override
  SpacingTokens get spacing => DefaultSpacingTokens();
  @override
  TextStyleTokens get textStyle => DefaultTextStyleTokens();
}

class DefaultColorTokens extends ColorTokens {
  @override
  Color get neutralShade => const Color(0xFF212121);
  @override
  Color get neutralMain => const Color(0xFF656464);
  @override
  Color get neutralTint => const Color(0xFFCCCACA);
  @override
  Color get neutralConcrete => const Color(0xFFF2F2F2);
  @override
  Color get primaryShade => const Color(0xFFEA8D00);
  @override
  Color get primaryMain => const Color(0xFFF9B041);
  @override
  Color get primaryTint => const Color(0xFFFDCA7B);
  @override
  Color get primaryXtint => const Color(0xFFFFEAC9);
  @override
  Color get successShade => const Color(0xFF16A34A);
  @override
  Color get successMain => const Color(0xFF22C55E);
  @override
  Color get successTint => const Color(0xFF4ADE80);
  @override
  Color get warningShade => const Color(0xFFDB8D0A);
  @override
  Color get warningMain => const Color(0xFFF59E0B);
  @override
  Color get warningTint => const Color(0xFFFFB73D);
  @override
  Color get dangerShade => const Color(0xFFB91C1C);
  @override
  Color get dangerMain => const Color(0xFFDC2626);
  @override
  Color get dangerTint => const Color(0xFFF87171);
}

class DefaultSpacingTokens extends SpacingTokens {
  @override
  EdgeInsets get spacingXxSmall => const EdgeInsets.all(4.0);
  @override
  EdgeInsets get spacingXSmall => const EdgeInsets.all(8.0);
  @override
  EdgeInsets get spacingSmall => const EdgeInsets.all(12.0);
  @override
  EdgeInsets get spacingMedium => const EdgeInsets.all(16.0);
  @override
  EdgeInsets get spacingBig => const EdgeInsets.all(20.0);
  @override
  EdgeInsets get spacingXBig => const EdgeInsets.all(24.0);
  @override
  EdgeInsets get spacingXxBig => const EdgeInsets.all(32.0);
  @override
  EdgeInsets get spacingXxxBig => const EdgeInsets.all(40.0);
  @override
  EdgeInsets get spacingLarge => const EdgeInsets.all(48.0);
  @override
  EdgeInsets get spacingXLarge => const EdgeInsets.all(56.0);
  @override
  EdgeInsets get spacingXxLarge => const EdgeInsets.all(64.0);
  @override
  EdgeInsets get spacingXxxLarge => const EdgeInsets.all(72.0);
  @override
  EdgeInsets get spacingHuge => const EdgeInsets.all(80.0);
  @override
  EdgeInsets get spacingXHuge => const EdgeInsets.all(96.0);
  @override
  EdgeInsets get spacingXxHuge => const EdgeInsets.all(128.0);
  @override
  EdgeInsets get spacingXxxHuge => const EdgeInsets.all(144.0);
}

class DefaultTextStyleTokens extends TextStyleTokens {
  @override
  TextStyle get heading1 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 40.0,
        fontWeight: FontWeight.w700,
        height: 1.0,
      );
  @override
  TextStyle get heading2 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 40.0,
        fontWeight: FontWeight.w700,
        height: 1.0,
      );
  @override
  TextStyle get heading3 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        height: 1.0,
      );
  @override
  TextStyle get heading4 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        height: 1.0,
      );
  @override
  TextStyle get heading5 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        height: 1.0,
      );
  @override
  TextStyle get paragraph => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );
  @override
  TextStyle get paragraphCopy => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        height: 1.0,
      );
}
