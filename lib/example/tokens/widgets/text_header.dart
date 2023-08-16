import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  final String text;
  const TextHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: context.tokens.textStyle.heading3,
      ),
    );
  }
}
