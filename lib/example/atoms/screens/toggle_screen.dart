import 'package:flutter/material.dart';
import 'package:wiser/wiser.dart';

class ToggleScreen extends StatelessWidget {
  static const String routeName = '/toggle';
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle'),
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
            ],
          ),
        ),
      ),
    );
  }
}
