import 'package:cwi_wiser/core/extension/spacing_extension.dart';
import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const TileCard({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.tokens.spacing.spacingXSmall.b,
      child: Card(
        color: context.tokens.color.neutralShade,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                padding: context.tokens.spacing.spacingMedium,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 4,
              color: context.tokens.color.primaryMain,
            ),
          ],
        ),
      ),
    );
  }
}
