import 'package:flutter/material.dart';
import 'package:pr1/Meditate.dart';
import 'package:pr1/Medinow.dart';
import 'package:pr1/MindDeepRelax.dart';

void main() {
  runApp(const Pr1());
}

class Pr1 extends StatelessWidget {
  const Pr1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Meditate(), //Medinow(), //MindDeepRelax(),
    );
    
  }
}

