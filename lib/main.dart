import 'package:flutter/material.dart';
import 'package:schoo_parents/config/themes/salle_cbba_theme.dart';
import 'package:schoo_parents/presentation/screens/home/home_screen.dart';
import 'package:schoo_parents/presentation/screens/student-home/student_home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: SalleCbbaTheme.theme(),
        home: const StudentHomeScreen()
      );
  }
}