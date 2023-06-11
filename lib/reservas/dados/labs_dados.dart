/// Esse arquivo representa os dados locais dos cursos disponíveis
import '../modelos/lab.dart';

class LaboratoriosDados {
  Map<String, Laboratorio> getData() {
    return {
      "LAB01": Laboratorio(id: "LAB01", name: "Lab. Informática"),
      "LAB02": Laboratorio(id: "LAB02", name: "Lab. Metodologias Ágeis"),
      "LAB03": Laboratorio(id: "LAB03", name: "Lab. Odontologia"),
      "LAB04": Laboratorio(id: "LAB04", name: "Lab. Elétrica"),
    };
  }
}
