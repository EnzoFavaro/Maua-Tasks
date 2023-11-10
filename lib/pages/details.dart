import 'package:flutter/material.dart';
import 'package:maua_tasks/widgets/task_details.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late final String nameTeacher;
  late final String task;
  late final String description;
  late final String date;
  late final Color cor = const Color(0xffFFD1D1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff001E3B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text.rich(
          TextSpan(
            text: "João Amaral",
            style: TextStyle(
              fontFamily: 'Lato-Regular',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
              decoration: TextDecoration.none,
            ),
            children: <InlineSpan>[
              TextSpan(
                text: '\n22.123.456-7',
                style: TextStyle(
                  fontFamily: 'Lato-Regular',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.2,
                  fontSize: 13.0,
                  color: Color(0xff875400),
                  height: 1.2,
                ),
              ),
            ],
          ),
        )),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Image.asset('assets/images/teacherPhoto.png'),
          ),
        ],
      ),
      body: const TaskDetails("Rogerio Guedes", "Tarefa", "Desafio de Cálculo: Analisar taxas de variação em situações do cotidiano, calculando derivadas e interpretando seus significados.", "Até dia 22/10 - 23:59", Color(0xffFFD1D1), "Atrasado"),
    );
  }
}