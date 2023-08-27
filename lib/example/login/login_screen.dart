import 'package:wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
