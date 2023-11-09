import 'package:flutter/material.dart';
import 'package:maua_tasks/widgets/task.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
      body: SingleChildScrollView(
      child: Column(
        children: [
           Row(
            children: [
             const Padding(
              padding: EdgeInsets.only(left: 10, top: 50),
              child: Text(
                "Sua agenda:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.bold),
              )),
              Padding(
                padding: const EdgeInsets.only( left: 200, top: 50,), 
                child: IconButton(
                icon: const Icon(Icons.filter_alt),
                onPressed: () {},
                color: Colors.white,
          )) 
            ]),
          const CardTask("Rogerio Guedes", "Tarefa", "Desafio de Cálculo: Analisar taxas de variação em situações do cotidiano, calculando derivadas e interpretando seus significados.", "Até dia 22/10 - 23:59", Color(0xffFFD1D1)),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1))),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffFFD1D1))),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1))),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffFFD1D1))),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1))),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffFFD1D1))),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1))),  
        ],
      ),
      )
    );
  }
}
