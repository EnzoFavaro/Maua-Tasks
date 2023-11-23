import 'package:flutter/material.dart';
import 'package:maua_tasks/pages/profile2.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              child: Icon(Icons.person_2_rounded,),
            ),
          ],
        ),
        body: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 100),
            child: Column(children: [
              Image.asset('assets/images/exclamationImage.png'),
              const Text(
                'Ei!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 253,
                child: Text(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  'Parece que você não finalizou seu cadastro.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Lato-Regular'),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 180, left: 10),
                  child: Column(children: [
                const SizedBox(
                    width: 253,
                    child: Text(
                      'Para utilizar o Mauá Tasks finalize seu cadastro clicando aqui',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Lato-Regular'),
                    )),
                    Padding(padding: const EdgeInsets.only(left: 120),child:Image.asset(
                      'assets/images/arrowImage.png',
                      alignment: Alignment.topCenter
                    ))
              ])),
              Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55, top: 10),
                child: SizedBox(
                    width: 300,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Profile2()),
                        );
                      },
                      child: const Text("Finalizar cadastro"),
                    )),
              )
            ],
          ),
            ])));

  }
}