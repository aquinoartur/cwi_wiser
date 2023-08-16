import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  static const String routeName = '/grid';
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grades'),
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
