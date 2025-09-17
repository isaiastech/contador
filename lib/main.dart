import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatelessWidget {
  const Contador({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
    );
  }

}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"), // <-- sua imagem
            fit: BoxFit.cover, // cobre toda a tela
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pode Entrar',
                style: TextStyle(fontSize: 40, color: Colors.blueAccent)),
            const SizedBox(height: 80),
            const Text('0',
                style: TextStyle(fontSize: 40, color: Colors.blueAccent)),
            const SizedBox(height: 80),

            // Linha com os dois botões
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // ação do primeiro botão
                  },
                  child: const Text(
                    "Entrar",
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                ),
                const SizedBox(width: 20), // espaço entre os botões
                ElevatedButton(
                  onPressed: () {
                    // ação do segundo botão
                  },
                  child: const Text(
                    "Sair",
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

