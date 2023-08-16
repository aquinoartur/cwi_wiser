import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AtomsScreen extends StatelessWidget {
  const AtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 20),
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}
