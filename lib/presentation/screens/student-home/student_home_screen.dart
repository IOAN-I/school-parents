import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schoo_parents/presentation/screens/subects/subjects_screen.dart';
import 'package:schoo_parents/presentation/widgets/shared/nav_drawer.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: colors.secondary,
        title: const Text('Trimestre 1 - 1'),
        backgroundColor: colors.primary,
        actions: [
          IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.cloudArrowDown))
        ],
      ),
      drawer: const NavDrawer(),
      body: const SubjectsScreen(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            backgroundColor: colors.secondary,
            foregroundColor: Colors.grey,
            child: const FaIcon(FontAwesomeIcons.cloudArrowDown, size: 18,),
          ),
          const SizedBox(height: 5,),
          FloatingActionButton.small(
            onPressed: () {},
            backgroundColor: colors.secondary,
            foregroundColor: Colors.grey,
            child: const Icon(Icons.refresh, size: 18,),
          ),
          const SizedBox(height: 5,),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      )
    );
  }
}