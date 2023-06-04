import 'package:flutter/material.dart';

class AttendancesScreen extends StatelessWidget {
  const AttendancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bernardo Manuel Saavedra Ortuno',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 12,),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const _AttendanceCard();
              },
              ),
          )
        ],
      ),
    );
  }
}

class _AttendanceCard extends StatelessWidget {
  const _AttendanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Retraso justificado',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400
                          ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Text('28 may 2023'),
                      Text(
                        '06:35 pm',
                        style: TextStyle(
                          fontSize: 22
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 8,),
            const Text(
              'Prueba asistencia.',
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                  'colegio.lasalle',
                  style: TextStyle(
                    color: colors.primary,
                    fontStyle: FontStyle.italic
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}