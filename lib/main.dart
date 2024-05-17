import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/sreens/initial_screen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  MyApp({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
          useMaterial3: true,
        ),
        home: InitialScreen());
  }
}
