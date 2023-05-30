import 'package:flutter/material.dart';
import 'package:schoo_parents/presentation/widgets/shared/field_box.dart';

class AddStudentAlertDialog extends StatelessWidget {
  const AddStudentAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return AlertDialog(
      title: const Text('Registrar Estudiante'),
      content: Wrap(
        children: [
          FieldBox(onValue: (value) {
            
          }, hintText: 'Codigo de estudiante'),
          FieldBox(onValue: (value) {
            
          }, hintText: 'Pin de registro')
        ],
      ),
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