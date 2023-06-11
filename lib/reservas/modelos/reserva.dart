/// Essa arquivo é um "modelo" (classe) que representa uma reserva
import 'turno.dart';

class Reserva {
  String idLab;
  String idCurso;
  int periodo;
  String horario;
  DateTime data;
  Turno turno;

  Reserva({
    required this.data,
    required this.idCurso,
    required this.periodo,
    required this.turno,
    required this.idLab,
    required this.horario,
  });
}
