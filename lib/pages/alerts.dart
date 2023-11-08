import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
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
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 15),
            child: Text(
              "Seus lembretes:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Lato-Regular',
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}