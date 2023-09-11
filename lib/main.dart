import 'package:flutter/material.dart';
import '../widgets/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MauaTasks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        color: const Color(0xff001E3B),
        child: const Column(
          children: [
            CardTask('Rogerio Guedes', 'Tarefa', 'Desafio de Cálculo: \nAnalisar taxas de variação em situações do \ncotidiano, calculando derivadas \ne interpretando seus significados.', 'Até dia 22/08 - 23:59')
          ],
        ),
      ),
    );
  }
}







