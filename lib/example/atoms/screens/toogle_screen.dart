import 'package:cwi_wiser/core/theme/wiser_theme.dart';
import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class ToogleScreen extends StatelessWidget {
  static const String routeName = '/toogle';
  const ToogleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toogle'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: context.tokens.spacing.spacingBig,
          child: Column(
            children: [
              WiserToggle(
                initialValue: false,
                onChanged: (value) {},
              ),
              WiserToggle(
                initialValue: true,
                onChanged: (value) {},
              ),
              WiserChecBoxListTile(
                currentValue: false,
                onChanged: (value) {},
                title: 'Label text',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
