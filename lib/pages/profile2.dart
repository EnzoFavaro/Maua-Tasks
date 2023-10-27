import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 50, bottom: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Nome completo:",
                style:
                    TextStyle(color: Colors.white, fontFamily: 'Lato-Regular', fontSize: 18),
              ))),
              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Digite seu nome",
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        labelStyle: TextStyle(
                            fontFamily: 'Lato-Regular',
                            decoration: TextDecoration.none),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.black)
                        )),
              ))
        ],
      ),
    );
  }
}
