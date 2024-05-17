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
              foto:
                  "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
              dificuldade: 4,
            ),
            Task(
              nome: "Andar de carro",
              foto:
                  "https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg",
              dificuldade: 2,
            ),
            Task(
              nome: "Andar de aviao",
              foto:
                  "https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg",
              dificuldade: 1,
            ),
            Task(
              nome: "Andar de aviao",
              foto: "https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg",
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
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
