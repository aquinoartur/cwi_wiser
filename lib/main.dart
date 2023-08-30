import 'package:cwi_wiser/example/example_screen.dart';
import 'package:flutter/material.dart';
import 'package:wiser/tokens/tokens.g.dart';

import 'core/theme/wiser_theme.dart';
import 'example/atoms/screens/buttons_screen.dart';
import 'example/atoms/screens/checkbox_screen.dart';
import 'example/atoms/screens/fields_screen.dart';
import 'example/atoms/screens/toggle_screen.dart';
import 'example/login/login_screen.dart';
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
        theme: Wiser.defaultTheme,
        initialRoute: SplashScreen.routeName,
        routes: <String, WidgetBuilder>{
          SplashScreen.routeName: (_) => const SplashScreen(),
          LoginScreen.routeName: (_) => const LoginScreen(),
          ExampleScreen.routeName: (_) => const ExampleScreen(),
          ColorsScreen.routeName: (_) => const ColorsScreen(),
          TypographyScreen.routeName: (_) => const TypographyScreen(),
          SpacingScreen.routeName: (_) => const SpacingScreen(),
          ButtonScreen.routeName: (_) => const ButtonScreen(),
          ToggleScreen.routeName: (_) => const ToggleScreen(),
          CheckboxScreen.routeName: (_) => const CheckboxScreen(),
          FieldsScreen.routeName: (_) => const FieldsScreen(),
        },
      ),
    );
  }
}
