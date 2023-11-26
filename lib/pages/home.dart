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
            child: Image.asset('assets/images/photoRogerio.png'),
          ),
        ],
      ),
      body: const SingleChildScrollView(
      child: Column(
        children: [
           Row(
            children: [
              Padding(
              padding: EdgeInsets.only(left: 10, top: 50, bottom: 5),
              child: Text(
                "Sua agenda:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.bold),
              )),
            ]),
           CardTask("Rogerio Guedes", "Tarefa", "Desafio de Cálculo: Analisar taxas de variação em situações do cotidiano, calculando derivadas e interpretando seus significados.", "Até dia 22/10 - 23:59", Color(0xffFFD1D1), 'assets/images/photoRogerio.png', '\nCálculo1'),
           Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Felipe Garcia", "       Prova", "Prezados alunos.\nGostaria de informá-los sobre a próxima avaliação em nossa disciplina de Modelagem Orientada a Objetos. A prova, que abordará os conceitos fundamentais que estudamos até o momento, está marcada para dia 28/09. Certifiquem-se de revisar os princípios de encapsulamento, herança, polimorfismo e diagramas de classes. Qualquer dúvida, estou à disposição. Boa preparação a todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1), 'assets/images/photoFelipe.png', '\nModelagem OO')),
            Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("IMT", "                         Evento", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "dia 26/09", Color(0xffFFFFFF), 'assets/images/logoimt.png', '')),
            Padding(
            padding: EdgeInsets.only(top: 20),
            child: CardTask("Marcio Alves", "    Tarefa", "Tarefa: Explorar os princípios fundamentais da Teoria Geral dos Sistemas, identificando exemplos de sistemas em diferentes domínios, como biologia, administração e ecologia. Descrevam as características que definem um sistema, suas partes constituintes e as interações que ocorrem entre elas.", "Até dia 26/08 - 23:59", Color(0xffD2FFD1), 'assets/images/photoMarcio.png', '\nTGS')),
          //   const Padding(
          //   padding: EdgeInsets.only(top: 20),
          //   child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffFFD1D1))),
          //   const Padding(
          //   padding: EdgeInsets.only(top: 20),
          //   child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1))),
          //   const Padding(
          //   padding: EdgeInsets.only(top: 20),
          //   child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffFFD1D1))),
          //   const Padding(
          //   padding: EdgeInsets.only(top: 20),
          //   child: CardTask("Rogerio Guedes", "Tarefa", "É com alegria que estendemos a vocês um convite especial para participar da nossa aguardada Feira de Estágios do Instituto Mauá de Tecnologia! Uma jornada de oportunidades para interações valiosas com empresas renomadas, ampliação de horizontes profissionais e o início de trajetórias promissoras. Contamos com a presença de todos!", "Até dia 22/10 - 23:59", Color(0xffD2FFD1))),  
        ],
      ),
      )
    );
  }
}