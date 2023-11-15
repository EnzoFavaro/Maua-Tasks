import 'package:flutter/material.dart';
import 'package:maua_tasks/widgets/bottom_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _urlGitHub = Uri.parse('https://github.com/EnzoFavaro/Maua-Tasks');

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffBBC5FC), Color(0xff05A6F0)],
        )),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset('assets/images/logo.png')),
          Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Image.asset('assets/images/rowImage.png')),
          TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomNavigationWidget()),
              );
            },
            child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                      color: const Color(0xff004587),
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 4.0,
                            offset: Offset(0.0, 1.5))
                      ]),
                  child: Row(children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset('assets/images/microsoftIcon.png')),
                    const Text(
                      "Entrar com conta IMT",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato-Regular',
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1.8),
                    )
                  ]),
                )),
          ),
          TextButton(
              onPressed: (){
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
                    border: Border.all(width: 1, color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
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
        ]));
  }
}