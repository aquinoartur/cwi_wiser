import 'package:flutter/material.dart';

import 'package:wiser/extension/spacing_extension.dart';
import 'package:wiser/tokens/tokens.g.dart';

class TextStyleContent extends StatelessWidget {
  final String label;
  final String description;
  final TextStyle style;
  const TextStyleContent({
    Key? key,
    required this.label,
    required this.description,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.tokens.spacing.spacingXxSmall.b,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: style,
          ),
          SizedBox(height: context.tokens.spacing.spacingXxSmall.value),
          Text(
            description,
            style: context.tokens.textStyle.paragraphCopy.copyWith(
              color: context.tokens.color.neutralMain,
            ),
          ),
          SizedBox(height: context.tokens.spacing.spacingSmall.value),
          const Divider(),
        ],
      ),
    );
  }
}
