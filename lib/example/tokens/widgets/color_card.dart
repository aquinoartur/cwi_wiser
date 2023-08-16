import 'package:cwi_wiser/core/theme/wiser_theme.dart';
import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final Color color;
  final String token;
  final String variable;
  final String value;
  final String group;

  const ColorCard({
    Key? key,
    required this.color,
    required this.token,
    required this.value,
    required this.variable,
    required this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.tokens.spacing.spacingXxSmall,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: context.tokens.spacing.spacingMedium,
              height: 100,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                labelText(label: 'Group', value: group.toUpperCase()),
                labelText(label: 'Token', value: token),
                labelText(label: 'Var', value: variable),
                labelText(label: 'Value', value: value),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget labelText({required String label, required String value}) {
    return Padding(
      padding: WiserTheme.spacing.spacingXxSmall,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}