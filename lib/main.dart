/// Arquivo principal da aplicação, aqui o aplicativo é rodado
/// e as principais configurações (como temas) são feitas.

import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/autenticacao_tela.dart';

void main() {
  // Rodar o aplicativo
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Configurações do aplicativo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gendamento',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.grey.shade300,
      ),
      debugShowCheckedModeBanner: false,
      home: const AutenticacaoTela(),
    );
  }
}
