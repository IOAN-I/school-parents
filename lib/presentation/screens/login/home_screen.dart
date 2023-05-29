import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _HomeHeader(colors: colors),
            const _HomeBody(),
            ]),
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
        padding: EdgeInsets.all(8.0),
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.grey,
      child: const Padding(
        padding: EdgeInsets.all(12.0),
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
              onPressed: () {},
              icon: const Icon(Icons.logout_outlined),
              color: colors.inversePrimary,
              )),
        ],
      )
      );
  }
}