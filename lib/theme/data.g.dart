//
// theme/data.g.dart
//

// Do not edit directly
// Generated on Fri, 11 Aug 2023 01:16:07 GMT

part of 'theme.g.dart';

class AppThemeData {
  const AppThemeData({
    required this.color,
  });

  factory AppThemeData.regular() => _regular;

  static final AppThemeData _regular = AppThemeData(
    color: AppColorData.regular(),
  );

  final AppColorData color;
}

class AppColorData {
  const AppColorData({
    required this.testeColor,
  });

  factory AppColorData.regular() => const AppColorData(
        testeColor: Color(0xFF23FD8D),
      );

  final Color testeColor;
}
