import 'package:wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

import '../../widgets/color_card.dart';

enum ColorsGroup { primary, neutral, success, warning, danger }

class ColorsScreen extends StatelessWidget {
  static const String routeName = '/colors';
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 190,
        ),
        children: [
          ColorCard(
            color: context.tokens.color.neutralShade,
            group: ColorsGroup.neutral.name,
            token: r'$neutral-shade',
          ),
          ColorCard(
            color: context.tokens.color.neutralMain,
            group: ColorsGroup.neutral.name,
            token: r'$neutral-main',
          ),
          ColorCard(
            color: context.tokens.color.neutralTint,
            group: ColorsGroup.neutral.name,
            token: r'$neutral-tint',
          ),
          ColorCard(
            color: context.tokens.color.neutralConcrete,
            group: ColorsGroup.neutral.name,
            token: r'$neutral-xtint',
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.primaryShade,
            group: ColorsGroup.primary.name,
            token: r'$primary-shade',
          ),
          ColorCard(
            color: context.tokens.color.primaryMain,
            group: ColorsGroup.primary.name,
            token: r'$primary-main',
          ),
          ColorCard(
            color: context.tokens.color.primaryTint,
            group: ColorsGroup.primary.name,
            token: r'$primary-tint',
          ),
          ColorCard(
            color: context.tokens.color.primaryXtint,
            group: ColorsGroup.primary.name,
            token: r'$primary-xtint',
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.successShade,
            group: ColorsGroup.success.name,
            token: r'$success-shade',
          ),
          ColorCard(
            color: context.tokens.color.successMain,
            group: ColorsGroup.success.name,
            token: r'$success-main',
          ),
          ColorCard(
            color: context.tokens.color.successTint,
            group: ColorsGroup.success.name,
            token: r'$success-tint',
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.warningShade,
            group: ColorsGroup.warning.name,
            token: r'$warning-shade',
          ),
          ColorCard(
            color: context.tokens.color.warningMain,
            group: ColorsGroup.warning.name,
            token: r'$warning-main',
          ),
          ColorCard(
            color: context.tokens.color.warningTint,
            group: ColorsGroup.warning.name,
            token: r'$warning-tint',
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.dangerShade,
            group: ColorsGroup.danger.name,
            token: r'$danger-shade',
          ),
          ColorCard(
            color: context.tokens.color.dangerMain,
            group: ColorsGroup.danger.name,
            token: r'$danger-main',
          ),
          ColorCard(
            color: context.tokens.color.dangerTint,
            group: ColorsGroup.danger.name,
            token: r'$danger-tint',
          ),
          // ---------------------------------------
        ],
      ),
    );
  }
}
