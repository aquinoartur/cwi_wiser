import 'package:cwi_wiser/design/tokens.g.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../example/example_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(const Duration(seconds: 2)).then(
          (_) => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              pageBuilder: (context, _, __) => const ExampleScreen(),
              transitionsBuilder: (_, animation, __, child) {
                final tween =
                    Tween(begin: const Offset(0.0, 1.0), end: Offset.zero) //
                        .chain(CurveTween(curve: Curves.easeIn));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.tokens.color.neutralShade,
      body: Stack(
        children: [
          Center(
            child: Transform.scale(
              scale: 1.5,
              child: Image.asset(
                'assets/cover.png',
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.7),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Lottie.asset(
                'assets/spinner.json',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
