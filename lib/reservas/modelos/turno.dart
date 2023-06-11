/// Esse arquivo contém um "enumerador" que representa os possíveis turnos

enum Turno {
  manha,
  tarde,
  noite,
}

// Essa extensão adiciona um nome ortograficamente correto aos turnos
extension TurnoExt on Turno {
  String name() {
    switch (this) {
      case Turno.manha:
        return "Manhã";
      case Turno.tarde:
        return "Tarde";
      case Turno.noite:
        return "Noite";
    }
  }
}
