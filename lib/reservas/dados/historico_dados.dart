/// Esse arquivo representa os dados locais referentes ao histórico dos dados
import '../modelos/reserva.dart';
import '../modelos/turno.dart';

class HistoricoDados {
  List<Reserva> getData() {
    return [
      Reserva(
        data: DateTime.now(),
        idCurso: "C01",
        periodo: 3,
        turno: Turno.noite,
        idLab: "LAB02",
        horario: "18:00-21:00",
      ),
      Reserva(
        data: DateTime.now(),
        idCurso: "C01",
        periodo: 3,
        turno: Turno.manha,
        idLab: "LAB01",
        horario: "10:00-12:00",
      ),
    ];
  }
}
