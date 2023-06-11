/// Esse arquivo representa os dados locais dos cursos disponíveis
import '../modelos/curso.dart';

class CursosDados {
  Map<String, Curso> getData() {
    return {
      "C01": Curso(id: "C01", name: "Análise e Desenvolvimento de Sistemas"),
      "C02": Curso(id: "C02", name: "Ciências da Computação"),
      "C03": Curso(id: "C03", name: "Medicina"),
      "C04": Curso(id: "C04", name: "Odontologia"),
    };
  }
}
