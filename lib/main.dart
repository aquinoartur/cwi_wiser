import 'package:cwi_wiser/example/example_screen.dart';
import 'package:flutter/material.dart';
import 'package:wiser/tokens/tokens.g.dart';

import 'core/theme/wiser_theme.dart';
import 'example/atoms/screens/buttons_screen.dart';
import 'example/splash/splash_screen.dart';
import 'example/tokens/screens/colors/colors_screen.dart';
import 'example/tokens/screens/spacing/spacing_screen.dart';
import 'example/tokens/screens/typography/typography_screen.dart';

void main() async {
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
        initialRoute: SplashScreen.routeName,
        routes: <String, WidgetBuilder>{
          SplashScreen.routeName: (BuildContext context) =>
              const SplashScreen(),
          ExampleScreen.routeName: (BuildContext context) =>
              const ExampleScreen(),
          ColorsScreen.routeName: (BuildContext context) =>
              const ColorsScreen(),
          TypographyScreen.routeName: (BuildContext context) =>
              const TypographyScreen(),
          SpacingScreen.routeName: (BuildContext context) =>
              const SpacingScreen(),
          ButtonScreen.routeName: (BuildContext context) =>
              const ButtonScreen(),
        },
      ),
    );
  }
}
