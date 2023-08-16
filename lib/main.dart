import 'package:cwi_wiser/core/tokens.g.dart';
import 'package:flutter/material.dart';

import 'core/theme/wiser_theme.dart';
import 'example/splash/splash_screen.dart';

void main() {
  runApp(const WiserDesignSystem());
}

class WiserDesignSystem extends StatelessWidget {
  const WiserDesignSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Tokens(
      tokens: DefaultTokens(),
      child: MaterialApp(
        title: 'Wiser Design System',
        theme: WiserTheme.defaultTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
