import 'package:flutter/material.dart';
// import 'flutter:flutter';

class CardTask extends StatelessWidget {
  final String nameTeacher;
  final String task;
  final String description;
  final String date;
  const CardTask(this.nameTeacher, this.task, this.description, this.date,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFD1D1),
      width: 374,
      height: 138,
      margin: const EdgeInsets.only(top: 100.0),
      padding: const EdgeInsets.all(7.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/photoTeacher.png'),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 2.0),
                child: Text.rich(
                  TextSpan(
                    text: nameTeacher,
                    style: const TextStyle(
                      fontFamily: 'Lato-Regular',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16.0,
                      decoration: TextDecoration.none,
                    ),
                    children: const <InlineSpan>[
                      TextSpan(
                        text: '\nCálculo 1',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 152.0),
                child: Text(
                  task,
                  style: const TextStyle(
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.w800,
                    fontSize: 13.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                FittedBox(
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'Lato-Regular',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
