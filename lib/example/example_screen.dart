import 'package:cwi_wiser/example/login/login_screen.dart';
import 'package:cwi_wiser/example/tokens/screens/tokens_screen.dart';
import 'package:wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

import 'atoms/atoms_screen.dart';
import 'molecules/molecules_screen.dart';

class ExampleScreen extends StatefulWidget {
  static const String routeName = '/example';
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen>
    with SingleTickerProviderStateMixin {
  static const int tabLenght = 5;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabLenght, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wiser Design System',
          style: context.tokens.textStyle.heading4,
        ),
        backgroundColor: context.tokens.color.neutralShade,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: tabLenght,
        child: Column(
          children: [
            Container(
              color: context.tokens.color.neutralShade,
              child: TabBar(
                controller: _tabController,
                indicatorWeight: 3.0,
                isScrollable: true,
                indicatorColor: context.tokens.color.primaryMain,
                labelStyle: context.tokens.textStyle.paragraph.copyWith(
                  fontSize: 11.5,
                ),
                tabs: const [
                  Tab(height: 40, text: 'Átomos'),
                  Tab(height: 40, text: 'Moléculas'),
                  Tab(height: 40, text: 'Organismos'),
                  Tab(height: 40, text: 'Tokens'),
                  Tab(height: 40, text: 'Exemplo'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // TAB 1
                  AtomsScreen(),
                  // TAB 2
                  MoleculesScreen(),
                  // TAB 3
                  SizedBox.expand(),
                  // TAB 4
                  TokensScreen(),
                  // TAB 5
                  LoginScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
