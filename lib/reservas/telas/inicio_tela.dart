import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/autenticacao_tela.dart';
import 'package:flutter_application_1/reservas/dados/cursos_dados.dart';
import 'package:flutter_application_1/reservas/dados/historico_dados.dart';
import 'package:flutter_application_1/reservas/dados/labs_dados.dart';
import 'package:flutter_application_1/reservas/dados/minhas_reservas_dados.dart';
import 'package:flutter_application_1/reservas/modelos/lab.dart';
import 'package:flutter_application_1/reservas/modelos/reserva.dart';
import 'package:flutter_application_1/reservas/modelos/tela_selecionada.dart';
import 'package:flutter_application_1/reservas/telas/historico_subtela.dart';
import 'package:flutter_application_1/reservas/telas/reservar_subtela.dart';
import 'package:flutter_application_1/reservas/telas/suas_reservas_subtela.dart';

import '../modelos/curso.dart';

class InicioTela extends StatefulWidget {
  const InicioTela({super.key});

  @override
  State<InicioTela> createState() => _InicioTelaState();
}

class _InicioTelaState extends State<InicioTela> {
  TelaSelecionada telaSelecionada = TelaSelecionada.reservar;

  Map<String, Curso> baseCursos = {};
  Map<String, Laboratorio> baseLabs = {};
  List<Reserva> historicoReservas = [];
  List<Reserva> minhasReservas = [];

  // Linhas que vão ser rodadas quando a tela for iniciada
  @override
  void initState() {
    carregarInformacoes();
    super.initState();
  }

  // Captura informações locais, no futuro, captura do back-end
  void carregarInformacoes() {
    baseCursos = CursosDados().getData();
    baseLabs = LaboratoriosDados().getData();

    historicoReservas = HistoricoDados().getData();
    minhasReservas = MinhasReservasDados().getData();
  }

  // Construção da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(child: Icon(Icons.person)),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Matheus Henrique"),
            Text(
              "01551290",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AutenticacaoTela(),
                ),
              );
            },
            icon: const Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      telaSelecionada = TelaSelecionada.historico;
                    });
                  },
                  child: Text(
                    "Histórico",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: (telaSelecionada == TelaSelecionada.historico)
                          ? null
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      telaSelecionada = TelaSelecionada.reservar;
                    });
                  },
                  child: Text(
                    "Reservar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: (telaSelecionada == TelaSelecionada.reservar)
                          ? null
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      telaSelecionada = TelaSelecionada.minhasReservas;
                    });
                  },
                  child: Text(
                    "Minhas Reservas",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: (telaSelecionada == TelaSelecionada.minhasReservas)
                          ? null
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: (telaSelecionada == TelaSelecionada.historico)
                ? HistoricoSubTela(
                    historicoReservas: historicoReservas,
                    baseCursos: baseCursos,
                    baseLabs: baseLabs)
                : (telaSelecionada == TelaSelecionada.reservar)
                    ? ReservarSubTela(baseLabs: baseLabs)
                    : SuasReservasSubTela(
                        minhasReservas: minhasReservas,
                        baseCursos: baseCursos,
                        baseLabs: baseLabs),
          ),
        ],
      ),
    );
  }
}
