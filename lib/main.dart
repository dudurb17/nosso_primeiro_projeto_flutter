import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/difficulty.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
          useMaterial3: true,
        ),
        home: Scaffold(
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
              children: [
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
                  foto:
                      "https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg",
                  dificuldade: 5,
                ),
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
        ));
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;
  const Task(
      {super.key,
      required this.nome,
      required this.foto,
      required this.dificuldade});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blue,
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.foto,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Difficulty(widget: widget)
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.white,
                            ),
                            Text(
                              "UP",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: widget.dificuldade > 0
                            ? (nivel / widget.dificuldade) / 10
                            : 1,
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Nivel: $nivel",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
