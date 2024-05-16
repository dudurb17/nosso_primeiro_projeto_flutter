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
      title: "Flutter: Primeiros passos",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.add_task_outlined,
                  color: Colors.white,
                ),
              ),
              Text(
                "Flutter:Primeiros passos",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Colors.blue[200],
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Cards(color1: 0xFF7D79D0, color2: 0xFF7D29D0, color3: 0xEA9EF9D0),
            Cards(color1: 0xEA9EF9D0, color2: 0xFF7D79D0, color3: 0xFF7D29D0),
            Cards(color1: 0xFF7D29D0, color2: 0xEA9EF9D0, color3: 0xFF7D79D0),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final color1;
  final color2;
  final color3;
  const Cards(
      {super.key,
      required this.color1,
      required this.color2,
      required this.color3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: Color(color1),
            width: 100,
            height: 150,
          ),
        ),
        Container(
          color: Color(color2),
          width: 100,
          height: 150,
        ),
        Container(
          color: Color(color3),
          width: 100,
          height: 150,
        ),
      ],
    );
  }
}
