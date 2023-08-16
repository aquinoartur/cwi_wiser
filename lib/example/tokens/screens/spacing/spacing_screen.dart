import 'package:cwi_wiser/core/extension/spacing_extension.dart';
import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class SpacingScreen extends StatefulWidget {
  static const String routeName = '/spacing';
  const SpacingScreen({super.key});

  @override
  State<SpacingScreen> createState() => _SpacingScreenState();
}

class _SpacingScreenState extends State<SpacingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Espaçamento'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: ListView(
        padding: context.tokens.spacing.spacingBig,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Token',
                style: context.tokens.textStyle.heading3,
              ),
              Text(
                'Size',
                style: context.tokens.textStyle.heading3,
              ),
            ],
          ),
          const SizedBox(height: 20),
          spacingInfo(
            name: 'spacing-xx-small',
            value: context.tokens.spacing.spacingXxSmall.str,
          ),
          spacingInfo(
            name: 'spacing-small',
            value: context.tokens.spacing.spacingSmall.str,
          ),
          spacingInfo(
            name: 'spacing-medium',
            value: context.tokens.spacing.spacingMedium.str,
          ),
          spacingInfo(
            name: 'spacing-big',
            value: context.tokens.spacing.spacingBig.str,
          ),
          spacingInfo(
            name: 'spacing-x-big',
            value: context.tokens.spacing.spacingXBig.str,
          ),
          spacingInfo(
            name: 'spacing-xx-big',
            value: context.tokens.spacing.spacingXxBig.value.toString(),
          ),
          spacingInfo(
            name: 'spacing-xxx-big',
            value: context.tokens.spacing.spacingXxxBig.value.toString(),
          ),
          spacingInfo(
            name: 'spacing-large',
            value: context.tokens.spacing.spacingLarge.value.toString(),
          ),
          spacingInfo(
            name: 'spacing-x-large',
            value: context.tokens.spacing.spacingXLarge.value.toString(),
          ),
          spacingInfo(
            name: 'spacing-xx-large',
            value: context.tokens.spacing.spacingXxLarge.value.toString(),
          ),
        ],
      ),
    );
  }

  Widget spacingInfo({required String name, required String value}) => Padding(
        padding: context.tokens.spacing.spacingXSmall,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: context.tokens.textStyle.paragraphCopy.copyWith(
                    color: context.tokens.color.neutralMain,
                  ),
                ),
                Text(
                  '$value px',
                  style: context.tokens.textStyle.paragraphCopy.copyWith(
                    color: context.tokens.color.neutralMain,
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      );
}
