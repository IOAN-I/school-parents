import 'package:flutter/material.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

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
                return const _SubjectCard();
              },
              ),
          )
        ],
      ),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Matematica',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                      ),
                  ),
                  Text(
                    'Prof. Alexamder Tony Herbas',
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
      ),
    );
  }
}