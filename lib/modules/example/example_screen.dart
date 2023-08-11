import 'package:cwi_wiser/theme/theme.g.dart';
import 'package:cwi_wiser/tokens/colors/wiser_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen>
    with SingleTickerProviderStateMixin {
  static const int tabLenght = 3;
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
        elevation: 0,
      ),
      body: DefaultTabController(
        length: tabLenght,
        child: Column(
          children: [
            Container(
              color: WiserColors.neutralShade,
              child: TabBar(
                controller: _tabController,
                indicatorWeight: 3.0,
                indicatorColor: WiserColors.primaryShade,
                tabs: const [
                  Tab(height: 40, text: 'Componentes'),
                  Tab(height: 40, text: 'Tokens'),
                  Tab(height: 40, text: 'Exemplos'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // TAB 1
                  ListView(
                    padding: const EdgeInsets.all(20),
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        color: AppColorData.regular().testeColor,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Átomos',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .25,
                        child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 100,
                          ),
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Botões'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Ícones'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Toogle'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Pills'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Moléculas',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Dialog'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Slider'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Stepper'),
                      ),
                    ],
                  ),
                  // TAB 2
                  const SizedBox.expand(),
                  // TAB 3
                  const SizedBox.expand(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
