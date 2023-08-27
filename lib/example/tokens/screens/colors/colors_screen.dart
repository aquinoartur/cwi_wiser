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
          mainAxisExtent: 210,
        ),
        children: [
          ColorCard(
            color: context.tokens.color.neutralShade,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.neutral.name,
          ),
          ColorCard(
            color: context.tokens.color.neutralMain,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.neutral.name,
          ),
          ColorCard(
            color: context.tokens.color.neutralTint,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.neutral.name,
          ),
          ColorCard(
            color: context.tokens.color.neutralConcrete,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.neutral.name,
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.primaryShade,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.primary.name,
          ),
          ColorCard(
            color: context.tokens.color.primaryMain,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.primary.name,
          ),
          ColorCard(
            color: context.tokens.color.primaryTint,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.primary.name,
          ),
          ColorCard(
            color: context.tokens.color.primaryXtint,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.primary.name,
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.successShade,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.success.name,
          ),
          ColorCard(
            color: context.tokens.color.successMain,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.success.name,
          ),
          ColorCard(
            color: context.tokens.color.successTint,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.success.name,
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.warningShade,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.warning.name,
          ),
          ColorCard(
            color: context.tokens.color.warningMain,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.warning.name,
          ),
          ColorCard(
            color: context.tokens.color.warningTint,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.warning.name,
          ),
          // ---------------------------------------
          ColorCard(
            color: context.tokens.color.dangerShade,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.danger.name,
          ),
          ColorCard(
            color: context.tokens.color.dangerMain,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.danger.name,
          ),
          ColorCard(
            color: context.tokens.color.dangerTint,
            token: context.tokens.color.dangerMain.toString(),
            value: context.tokens.color.dangerMain.value.toString(),
            variable: '---color-neutral-tint',
            group: ColorsGroup.danger.name,
          ),
          // ---------------------------------------
        ],
      ),
    );
  }
}
