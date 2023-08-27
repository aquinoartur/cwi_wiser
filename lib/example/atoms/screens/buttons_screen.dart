import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class ButtonScreen extends StatelessWidget {
  static const String routeName = '/buttons';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: context.tokens.spacing.spacingXBig,
        child: Center(
          child: Column(
            children: [
              WiserButton.solidPrimary(
                label: 'Texto do botão',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              WiserButton.solidSecondary(
                label: 'Texto do botão',
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              WiserButton.solidTertiary(
                label: 'Texto do botão',
                withIcon: false,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
