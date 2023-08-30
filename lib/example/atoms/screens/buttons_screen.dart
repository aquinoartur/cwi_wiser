import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class ButtonScreen extends StatefulWidget {
  static const String routeName = '/buttons';
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
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
              WiserSolidButton.primary(
                label: 'Texto do botão',
                icon: Icons.check,
                onPressed: showSnack,
              ),
              const SizedBox(height: 20),
              WiserSolidButton.secondary(
                label: 'Texto do botão',
                icon: Icons.chevron_right,
                onPressed: showSnack,
              ),
              const SizedBox(height: 20),
              WiserSolidButton.tertiary(
                label: 'Texto do botão',
                onPressed: showSnack,
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              WiserTextButton.primary(
                label: 'Texto do botão',
                onPressed: showSnack,
              ),
              const SizedBox(height: 10),
              WiserTextButton.secondary(
                label: 'Texto do botão',
                onPressed: showSnack,
              ),
              const SizedBox(height: 10),
              WiserTextButton.tertiary(
                label: 'Texto do botão',
                onPressed: showSnack,
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              WiserUnderlineButton(
                label: 'Texto do botão',
                labelColor: context.tokens.color.dangerMain,
                onPressed: () {},
              ),
              WiserUnderlineButton(
                label: 'Texto do botão',
                labelColor: context.tokens.color.successMain,
                onPressed: showSnack,
              ),
              WiserUnderlineButton(
                label: 'Texto do botão',
                labelColor: context.tokens.color.warningTint,
                onPressed: showSnack,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnack() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Você clicou'),
        duration: kThemeAnimationDuration,
      ),
    );
  }
}
