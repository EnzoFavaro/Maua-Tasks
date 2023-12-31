import 'package:flutter/material.dart';
import 'package:maua_tasks/pages/details.dart';
import 'package:maua_tasks/pages/login.dart';
import 'package:maua_tasks/pages/settings.dart';

class CardTask extends StatelessWidget {
  final String nameTeacher;
  final String task;
  final String description;
  final String date;
  final Color cor;
  final String photo;
  final String discipline;

  // static const expired = Color(0xffFFD1D1);
  // static const concluded = Color(0xffD2FFD1);

  const CardTask(this.nameTeacher, this.task, this.description, this.date,
      this.cor, this.photo, this.discipline,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Details()));
        },
        child: Container(
          color: cor,
          width: 374,
          constraints: const BoxConstraints(minHeight: 100),
          padding: const EdgeInsets.all(7.0),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(photo),
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
                      children: <InlineSpan>[
                        TextSpan(
                          text: discipline,
                          style: const TextStyle(
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
                  padding: const EdgeInsets.only(left: 150),
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
          ]),
        ));
  }
}
