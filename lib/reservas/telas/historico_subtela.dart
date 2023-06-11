import 'package:flutter/material.dart';

import '../modelos/curso.dart';
import '../modelos/lab.dart';
import '../modelos/reserva.dart';

class HistoricoSubTela extends StatelessWidget {
  final List<Reserva> historicoReservas;
  final Map<String, Curso> baseCursos;
  final Map<String, Laboratorio> baseLabs;

  const HistoricoSubTela({
    super.key,
    required this.historicoReservas,
    required this.baseCursos,
    required this.baseLabs,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(historicoReservas.length, (index) {
          Reserva reserva = historicoReservas[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "${reserva.data.day}/${reserva.data.month} - ${reserva.idLab}"),
                Text("Curso: ${reserva.idCurso}"),
                Text(
                    "Periodo: ${reserva.periodo} - Horário: ${reserva.horario} "),
                Text("Turno de Reserva: ${reserva.turno.name}")
              ],
            ),
          );
        }),
      ),
    );
  }
}
