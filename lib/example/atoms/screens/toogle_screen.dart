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
              WiserToogle(
                initialValue: false,
                onChanged: (p0) {},
              ),
              WiserToogle(
                initialValue: true,
                onChanged: (p0) {},
              ),
              WiserChecBoxListTile(
                currentValue: false,
                onChanged: (p0) {},
                title: 'Label text',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
