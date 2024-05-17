import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/main.dart';

class Difficulty extends StatelessWidget {
  const Difficulty({
    super.key,
    required this.widget,
  });

  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 1 ? Colors.blue[500] : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 2 ? Colors.blue[500] : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 3 ? Colors.blue[500] : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 4 ? Colors.blue[500] : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 5 ? Colors.blue[500] : Colors.blue[100],
        )
      ],
    );
  }
}
