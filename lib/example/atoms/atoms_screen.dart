import 'package:cwi_wiser/example/atoms/screens/buttons_screen.dart';
import 'package:cwi_wiser/example/tokens/widgets/text_header.dart';
import 'package:wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class AtomsScreen extends StatelessWidget {
  const AtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: context.tokens.spacing.spacingBig,
      children: [
        const TextHeader(text: 'Componentes'),
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
                onPressed: () => Navigator.pushNamed(
                  context,
                  ButtonScreen.routeName,
                ),
                child: const Text('Botões'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Ícones'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Checkbox'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Toogle'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
