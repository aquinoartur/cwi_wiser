import 'package:wiser/extension/spacing_extension.dart';
import 'package:cwi_wiser/example/tokens/widgets/text_style_content.dart';
import 'package:wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_header.dart';

class TypographyScreen extends StatelessWidget {
  static const String routeName = '/typography';
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipografia'),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: ListView(
        padding: context.tokens.spacing.spacingBig,
        children: [
          const TextHeader(text: 'Estilos'),
          SizedBox(height: context.tokens.spacing.spacingBig.value),
          TextStyleContent(
            label: 'Heading 1',
            style: context.tokens.textStyle.heading1,
            description:
                'poppins\n\nfont-size-x-large\n\nfont-weight-bold\n\nline-height-100',
          ),
          TextStyleContent(
            label: 'Heading 2',
            style: context.tokens.textStyle.heading2.copyWith(fontSize: 32),
            description:
                'poppins\n\nfont-size-xx-large\n\nfont-weight-bold\n\nline-height-100',
          ),
          TextStyleContent(
            label: 'Heading 3',
            style: context.tokens.textStyle.heading3,
            description:
                'poppins\n\nfont-size-x-large\n\nfont-weight-bold\n\nline-height-100',
          ),
          TextStyleContent(
            label: 'Paragraph',
            style: context.tokens.textStyle.paragraph,
            description:
                'poppins\n\nfont-size-medium\n\nfont-weight-regular\n\nline-height-140',
          ),
          TextStyleContent(
            label: 'Label',
            style: context.tokens.textStyle.paragraphCopy,
            description:
                'poppins\n\nfont-size-medium\n\nfont-weight-regular\n\nline-height-100',
          ),
        ],
      ),
    );
  }
}
