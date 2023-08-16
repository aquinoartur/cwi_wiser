import 'package:cwi_wiser/example/tokens/screens/tokens_screen.dart';
import 'package:cwi_wiser/tokens/tokens.g.dart';
import 'package:flutter/material.dart';

import 'atoms/atoms_screen.dart';

class ExampleScreen extends StatefulWidget {
  static const String routeName = '/example';
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen>
    with SingleTickerProviderStateMixin {
  static const int tabLenght = 4;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabLenght, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wiser Design System'),
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
                indicatorColor: context.tokens.color.primaryMain,
                tabs: const [
                  Tab(height: 40, text: 'Átomos'),
                  Tab(height: 40, text: 'Moléculas'),
                  Tab(height: 40, text: 'Organismos'),
                  Tab(height: 40, text: 'Tokens'),
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
                  SizedBox.expand(),
                  // TAB 3
                  SizedBox.expand(),
                  // TAB 4
                  TokensScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
