import 'package:flutter/material.dart';
import 'package:schoo_parents/config/helpers/text_helper.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
                return const _NotificationCard();
              },
              ),
          )
        ],
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({
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
                        'INFOGRAFIA JUNIO 2023',
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
            SelectableText.rich(
              TextSpan(
                children: TextHelper.extractText(
                  'Buenos dias, estimados padres de familia, les compartimos las actividades del mes de junio, a traves del siguiente enlace.\n https://bit.ly/3WJssYS'
                ),
              ),
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