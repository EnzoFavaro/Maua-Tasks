import 'package:flutter/material.dart';
import 'package:maua_tasks/pages/home.dart';

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
  bool _showButton = true;
  bool? _isCheckedProvas = false;
  bool? _isCheckedTarefas = false;
  bool? _isCheckedEventos = false;
  bool? _isCheckedMensagens = false;
  bool _selectPhotoProfile = false;
  String? textButtonProfile = "Selecione uma foto de perfil";

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
            _showButton
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _showButton = false;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff001E3B)),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              'Selecione o curso, série e período antes',
                              style: TextStyle(color: Color(0xffFF0000)),
                            ))))
                : Row(children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Radio(
                          value: SingingCharacter.t1,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return const Color(0xff1578D4);
                            } else {
                              return Colors.white;
                            }
                          }),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child:
                            Text("T1", style: TextStyle(color: Colors.white))),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Radio(
                        value: SingingCharacter.t2,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1578D4);
                          } else {
                            return Colors.white;
                          }
                        }),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child:
                            Text("T2", style: TextStyle(color: Colors.white))),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Radio(
                        value: SingingCharacter.t3,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1578D4);
                          } else {
                            return Colors.white;
                          }
                        }),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child:
                            Text("T3", style: TextStyle(color: Colors.white))),
                  ]),
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 20, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Notificações:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Checkbox(
                        checkColor: const Color(0xff1578D4),
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1578D4);
                          } else {
                            return Colors.white;
                          }
                        }),
                        value: _isCheckedProvas,
                        onChanged: (value) {
                          setState(() {
                            _isCheckedProvas = value;
                          });
                        })),
                const Text(
                  "Provas",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Checkbox(
                        checkColor: const Color(0xff1578D4),
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1578D4);
                          } else {
                            return Colors.white;
                          }
                        }),
                        value: _isCheckedTarefas,
                        onChanged: (value) {
                          setState(() {
                            _isCheckedTarefas = value;
                          });
                        })),
                const Text(
                  "Tarefas",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Checkbox(
                        checkColor: const Color(0xff1578D4),
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1578D4);
                          } else {
                            return Colors.white;
                          }
                        }),
                        value: _isCheckedEventos,
                        onChanged: (value) {
                          setState(() {
                            _isCheckedEventos = value;
                          });
                        })),
                const Text(
                  "Eventos",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Checkbox(
                        checkColor: const Color(0xff1578D4),
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1578D4);
                          } else {
                            return Colors.white;
                          }
                        }),
                        value: _isCheckedMensagens,
                        onChanged: (value) {
                          setState(() {
                            _isCheckedMensagens = value;
                          });
                        })),
                const Text(
                  "Mensagens",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 330,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectPhotoProfile = true;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff1578D4)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(top: 10.0, bottom: 10.0)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                    ),
                    child: const Text(
                      "Selecione uma foto de perfil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lato-Regular',
                      ),
                    ),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 25, top: 20, bottom: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Preview:",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 18),
                    ))),
            _selectPhotoProfile
                ? Image.asset("assets/images/profilePhoto.png")
                : Image.asset("assets/images/preview.png", width: 270),
            Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: SizedBox(
                  width: 230,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff039000)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(top: 10.0, bottom: 10.0)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                    ),
                    child: const Text(
                      "Salvar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lato-Regular',
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );}
    
  }
