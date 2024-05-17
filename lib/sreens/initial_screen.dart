import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({
    super.key,
  });

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 32),
          child: Text(
            "Tarefas",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 800),
        opacity: opacidade ? 1 : 0,
        child: ListView(
          children: const [
            Task(
              nome: "Andar de bike",
              foto: "assets/imagens/dash.png",
              dificuldade: 4,
            ),
            Task(
              nome: "Andar de carro",
              foto: "assets/imagens/livro.jpg",
              dificuldade: 2,
            ),
            Task(
              nome: "Andar de aviao",
              foto: "assets/imagens/meditar.jpeg",
              dificuldade: 1,
            ),
            Task(
              nome: "Andar de aviao",
              foto: "assets/imagens/bike.webp",
              dificuldade: 5,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
