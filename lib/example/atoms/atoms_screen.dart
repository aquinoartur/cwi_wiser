import 'package:cwi_wiser/example/tokens/widgets/text_header.dart';
import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class AtomsScreen extends StatelessWidget {
  const AtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: context.tokens.spacing.spacingBig,
      children: [
        const TextHeader(text: 'Exemplos'),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 100,
            ),
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Botões'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Ícones'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Toogle'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Pills'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
