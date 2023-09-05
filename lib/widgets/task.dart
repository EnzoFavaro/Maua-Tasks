import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  final String nameTeacher;
  final String task;
  const CardTask(this.nameTeacher, this.task,{super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFD1D1),
      width: 374,
      height: 138,
      margin: const EdgeInsets.only(top: 100.0),
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/photoTeacher.png'),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 3.0),
                child: Text(
                  nameTeacher,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130.0),
                child: Text(
                  task,
                  style: const TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}



