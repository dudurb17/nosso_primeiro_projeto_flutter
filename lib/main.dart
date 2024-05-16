import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Tarefas"),
            backgroundColor: Colors.blue[300],
          ),
          body: ListView(
            children: [
              Task(nome: "Andar de bike"),
              Task(nome: "Andar de carro"),
              Task(nome: "Andar de aviao"),
              Task(nome: "Andar de aviao"),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}

class Task extends StatefulWidget {
  final String nome;
  const Task({super.key, required this.nome});

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
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
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
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: const Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
              Text(
                "Nivel: $nivel",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
