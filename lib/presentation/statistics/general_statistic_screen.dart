import 'package:flutter/material.dart';
import 'package:schoo_parents/presentation/statistics/widgets/linear_graphic_widget.dart';

class GeneralStatisticScreen extends StatelessWidget {
  const GeneralStatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Estadisticas Generales'),
        backgroundColor: colors.primary,
        foregroundColor: colors.secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 5,
                  child: Text(
                    'Bernardo Manuel Saavedra Ortuno',
                    style: TextStyle(fontSize: 24),
                  )
                ),
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(20),
                      bottomStart: Radius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      color: colors.primary,
                      child: Column(
                        children: [
                          Text('Puesto', style: TextStyle(color: colors.secondary),),
                          Row(
                            children: [
                              Expanded(child: Text('9 ', style: TextStyle(color: colors.secondary, fontSize: 40))),
                              Expanded(child: Text('de 40 estud.', style: TextStyle(color: colors.secondary)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const LinearGraphicWidget()
          ],
        ),
      ),
    );
  }
}