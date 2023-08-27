import 'package:cwi_wiser/example/tokens/widgets/text_header.dart';
import 'package:wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class MoleculesScreen extends StatelessWidget {
  const MoleculesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: context.tokens.spacing.spacingBig,
      children: [
        const TextHeader(text: 'Componentes'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Dialog'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Slider'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Stepper'),
        ),
      ],
    );
  }
}
