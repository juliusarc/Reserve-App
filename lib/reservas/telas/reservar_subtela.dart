import 'package:flutter/material.dart';

import '../modelos/lab.dart';

class ReservarSubTela extends StatelessWidget {
  final Map<String, Laboratorio> baseLabs;

  const ReservarSubTela({
    super.key,
    required this.baseLabs,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: List.generate(baseLabs.keys.toList().length, (index) {
          String idLab = baseLabs.keys.toList()[index];
          Laboratorio laboratorio = baseLabs[idLab]!;
          return InkWell(
            onTap: () {},
            child: Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.black,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/lab.png",
                    height: 32,
                  ),
                  Text(
                    laboratorio.id,
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    laboratorio.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
