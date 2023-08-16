import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class TypographyScreen extends StatelessWidget {
  static const String routeName = '/typography';
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipografia'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 210,
        ),
        children: const [
          // ---------------------------------------
        ],
      ),
    );
  }
}
