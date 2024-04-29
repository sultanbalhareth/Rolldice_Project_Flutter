import 'package:flutter/material.dart';
import 'package:rolldice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:
            GradientContainer(colors: const [Colors.amberAccent, Colors.green]),
      ),
    ),
  );
}
