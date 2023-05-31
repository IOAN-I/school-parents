import 'package:flutter/material.dart';
import 'package:schoo_parents/presentation/widgets/home/add_student_alert_dialog.dart';
import 'package:schoo_parents/presentation/widgets/shared/custom_alert_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _HomeHeader(colors: colors),
            _HomeBody(colors: colors),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AddStudentAlertDialog(),
            );
          },
          child: const Icon(Icons.add)
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: colors.primary,
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estudiantes registrados',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                  ),
                  Expanded(
                    child: _StudentList(),
                  )
              ],
            ),
          ),
        ),
      )
      );
  }
}

class _StudentList extends StatelessWidget {
  const _StudentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: _StudentCard(),
      );
    },);
  }
}

class _StudentCard extends StatelessWidget {
  const _StudentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bernardo Manuel Saavedra Ortuno', style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),),
            Text('4 C - Secundaria', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),)
          ],
        ),
      ),
      );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({
    super.key,
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        children: [
          Container(color: colors.primary,),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset('assets/logo-colegio.png'),
            ),
            ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => const CustomAlertDialog(),
                    barrierDismissible: true,
                  );
              },
              icon: const Icon(Icons.logout_outlined),
              color: colors.inversePrimary,
              )),
        ],
      )
      );
  }
}