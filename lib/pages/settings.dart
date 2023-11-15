import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _urlGitHub = Uri.parse('https://github.com/EnzoFavaro/Maua-Tasks');

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
      body: Column(
        children: [
          const Row(children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 50),
                child: Text(
                  "Configurações:",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato-Regular',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ]),
          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 50),
                  child: Text(
                    "Versão do software: 1.0.0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Lato-Regular',
                    ),
                  )),
            ],
          ),
          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "Sistema Operacional: Android",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Lato-Regular',
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: SizedBox(
                    width: 265,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Reporte um Bug"),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        launchUrl(
                          _urlGitHub,
                          mode: LaunchMode.externalApplication,
                        );
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(width: 1, color: Colors.transparent),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 4.0,
                                offset: Offset(0.0, 1.5))
                          ]),
                      child: Row(children: [
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/images/githubIcon.png')),
                        const Text(
                          "Conheça o projeto",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato-Regular',
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.0),
                        )
                      ]),
                    )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 275),
            child: Text(
              "Atenção! Essa ação não pode ser desfeita",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato-Regular',
                  fontSize: 16,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: 265,
              height: 22,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffD41515))),
                child: const Text(
                  "Deletar minha conta",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato-Regular',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
