import 'package:cwi_wiser/example/tokens/screens/colors/colors_screen.dart';
import 'package:cwi_wiser/example/tokens/screens/spacing/spacing_screen.dart';
import 'package:cwi_wiser/example/tokens/screens/typography/typography_screen.dart';
import 'package:cwi_wiser/example/tokens/widgets/tile_card.dart';
import 'package:flutter/material.dart';

import 'grids/grid_screen.dart';

class TokensScreen extends StatelessWidget {
  const TokensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 20),
        TileCard(
          title: 'Cores',
          onTap: () => Navigator.pushNamed(
            context,
            ColorsScreen.routeName,
          ),
        ),
        TileCard(
          title: 'Tipografia',
          onTap: () => Navigator.pushNamed(
            context,
            TypographyScreen.routeName,
          ),
        ),
        TileCard(
          title: 'Espaçamento',
          onTap: () => Navigator.pushNamed(
            context,
            SpacingScreen.routeName,
          ),
        ),
        TileCard(
          title: 'Grades',
          onTap: () => Navigator.pushNamed(
            context,
            GridScreen.routeName,
          ),
        ),
      ],
    );
  }
}
