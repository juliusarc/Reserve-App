/// Esse arquivo representa os dados locais referentes as minhas reservas
import '../modelos/reserva.dart';
import '../modelos/turno.dart';

class MinhasReservasDados {
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
    ];
  }
}
