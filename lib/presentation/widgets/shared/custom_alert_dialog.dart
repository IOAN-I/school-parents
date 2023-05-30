import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return AlertDialog(
      title: Text('Cerrar Sesion'),
      content: Text('Esta seguro que desea cerrar sesion?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANCELAR', style: TextStyle(color: colors.secondary),
          )),
        TextButton(
          onPressed: () {},
          child: Text('CONFIRMAR')
          )
      ],
    );
  }
}