import 'package:flutter/material.dart';

class BehaviorsScreen extends StatelessWidget {
  const BehaviorsScreen({super.key});

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
                return const _BehaviorCard();
              },
              ),
          )
        ],
      ),
    );
  }
}

class _BehaviorCard extends StatelessWidget {
  const _BehaviorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trimestre 1',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                          ),
                      ),
                      Text(
                        'Evaluacion 1 Parcial',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  child: Text(
                    '95',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            Text(
              'Prof. Profesor Titular de Curso 02 may 2023 Participa en las actividades Organizadas por el colegio',
            )
          ],
        ),
      ),
    );
  }
}