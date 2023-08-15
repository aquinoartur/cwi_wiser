import 'package:cwi_wiser/design/tokens.g.dart';
import 'package:flutter/material.dart';

import 'design/theme/wiser_theme.dart';
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
