import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class CheckboxScreen extends StatelessWidget {
  static const String routeName = '/checkbox';
  const CheckboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: context.tokens.spacing.spacingBig,
          child: Column(
            children: [
              WiserCheckBox(
                currentValue: false,
                onChanged: (value) {},
                title: 'Label text',
              ),
              WiserCheckBox(
                currentValue: true,
                onChanged: (value) {},
                title: 'Label text',
              ),
              WiserCheckBox(
                currentValue: null,
                onChanged: (value) {},
                title: 'Label text',
              ),
              const Divider(),
              WiserCheckBox(
                currentValue: false,
                onChanged: (value) {},
                compact: false,
                title: 'Label text',
                triState: false,
              ),
              WiserCheckBox(
                currentValue: true,
                onChanged: (value) {},
                title: 'Label text',
                compact: false,
                triState: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
