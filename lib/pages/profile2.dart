import 'package:flutter/material.dart';

final dropValueCurso = ValueNotifier("");
final dropValueSerie = ValueNotifier("");
final dropValuePeriodo = ValueNotifier("");

final dropOpcoesCurso = [
  "Ciência da Computação",
  "Sistemas de Informação",
  "Engenharia da Computação",
  "Administração",
  "Design"
];

final dropOpcoesSerie = [
  "1º semestre",
  "2º semestre",
  "3º semestre",
  "4º semestre",
  "5º semestre",
  "6º semestre",
  "7º semestre",
  "8º semestre"
];

final dropOpcoesPeriodo = [
  "Matutino / Manhã",
  "Vespertino / Tarde",
  "Noturno / Noite"
];

enum SingingCharacter { t1, t2, t3 }

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  SingingCharacter? _character = SingingCharacter.t1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff001E3B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('22.123.456-7'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.person_2_rounded,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 50, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nome completo:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            const SizedBox(
                width: 350,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Digite seu nome",
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelStyle: TextStyle(
                          fontFamily: 'Lato-Regular',
                          decoration: TextDecoration.none),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.black))),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Curso:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            ValueListenableBuilder(
                valueListenable: dropValueCurso,
                builder: (BuildContext context, String value, _) {
                  return SizedBox(
                    width: 350,
                    height: 60,
                    child: DropdownButtonFormField<String>(
                      hint: const Text("Selecione o seu curso"),
                      value: (value.isEmpty) ? null : value,
                      onChanged: (escolha) =>
                          dropValueCurso.value = escolha.toString(),
                      items: dropOpcoesCurso
                          .map(
                            (op) =>
                                DropdownMenuItem(value: op, child: Text(op)),
                          )
                          .toList(),
                      isExpanded: true,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.black)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      iconSize: 26,
                    ),
                  );
                }),
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Semestre/série:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            ValueListenableBuilder(
                valueListenable: dropValueSerie,
                builder: (BuildContext context, String value, _) {
                  return SizedBox(
                    width: 350,
                    height: 60,
                    child: DropdownButtonFormField<String>(
                      hint: const Text("Selecione"),
                      value: (value.isEmpty) ? null : value,
                      onChanged: (escolha) =>
                          dropValueSerie.value = escolha.toString(),
                      items: dropOpcoesSerie
                          .map(
                            (op) =>
                                DropdownMenuItem(value: op, child: Text(op)),
                          )
                          .toList(),
                      isExpanded: true,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.black)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      iconSize: 26,
                    ),
                  );
                }),
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Período:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            ValueListenableBuilder(
                valueListenable: dropValuePeriodo,
                builder: (BuildContext context, String value, _) {
                  return SizedBox(
                    width: 350,
                    height: 60,
                    child: DropdownButtonFormField<String>(
                      hint: const Text("Selecione o período"),
                      value: (value.isEmpty) ? null : value,
                      onChanged: (escolha) =>
                          dropValuePeriodo.value = escolha.toString(),
                      items: dropOpcoesPeriodo
                          .map(
                            (op) =>
                                DropdownMenuItem(value: op, child: Text(op)),
                          )
                          .toList(),
                      isExpanded: true,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.black)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      iconSize: 26,
                    ),
                  );
                }),
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Turma:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff001E3B)),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    mouseCursor: MaterialStateMouseCursor.textable),
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, top: 20),
                        child: Text(
                          'Selecione o curso, série e período antes',
                          style: TextStyle(color: Color(0xffFF0000)),
                        )))),
            ListTile(
                textColor: Colors.white,         
                title: const Text('T1'),
                leading: Radio<SingingCharacter>(
                  fillColor: MaterialStateProperty.all(Colors.white),
                  value: SingingCharacter.t1,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                )),
            ListTile(
                textColor: Colors.white,
                title: const Text('T2'),
                leading: Radio<SingingCharacter>(
                  fillColor: MaterialStateProperty.all(Colors.white),
                  value: SingingCharacter.t2,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                )),
            ListTile(
                textColor: Colors.white,
                title: const Text('T3'),
                leading: Radio<SingingCharacter>(
                  fillColor: MaterialStateProperty.all(Colors.white),
                  value: SingingCharacter.t3,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }
}
