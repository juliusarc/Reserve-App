import "package:flutter/material.dart";
import "package:flutter_application_1/autenticacao/autenticacao_tela.dart";
import 'package:flutter_application_1/reservas/telas/inicio_tela.dart';

class CadastroTela extends StatelessWidget {
  const CadastroTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 128,
                ),
                const Text(
                  "GENDAMENTO",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                const Text(
                  "Cadastrar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Matrícula"),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Nome"),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Senha"),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Confirme a Senha"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AutenticacaoTela(),
                      ),
                    );
                  },
                  child: const Text("Já possue conta? Entre."),
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InicioTela(),
                        ));
                  },
                  child: const Text("Entrar"),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Fariboy Group",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
