import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: colors.primary,
                image: const DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/logo-colegio.png'))),
            child: const Text(''),
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_outlined),
            title: const Text('Asistencias'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.checklist_outlined),
            title: const Text('Conducta'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.library_add_check_outlined),
            title: const Text('Materias'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month_outlined),
            title: const Text('Reuniones'),
            onTap: () => {Navigator.of(context).pop()},
          ),
           ListTile(
            leading: const Icon(Icons.notifications_active_outlined),
            title: const Text('Notificaciones'),
            onTap: () => {Navigator.of(context).pop()},
          ),
           ListTile(
            leading: const FaIcon(FontAwesomeIcons.chartColumn),
            title: const Text('Estadisticas'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}