import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final String nameTeacher;
  final String task;
  final String description;
  final String date;
  final Color cor;
  final String statusTask;
  const TaskDetails(this.nameTeacher, this.task, this.description, this.date,
      this.cor, this.statusTask,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20),
      child: Container(
        color: cor,
        width: 374,
        height: 650,
        constraints: const BoxConstraints(minHeight: 100),
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/photoRogerio.png'),
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
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFF0000),
                      border: Border.all(color: const Color(0xffFF0000)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      statusTask,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lato-Regular',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Descrição:",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                description,
                style: const TextStyle(
                  fontFamily: 'Lato-Regular',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 15,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    "Passos:",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato-Regular',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "1. Escolham três situações do cotidiano onde ocorram mudanças ou movimentos. Pode ser algo relacionado a velocidade, crescimento, decaimento, entre outros.",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                softWrap: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "2. Para cada uma dessas situações, calculem a derivada em relação ao tempo (se for o caso) e interpretem o valor obtido.",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                softWrap: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child:  Text(
                "3. Discutam como a derivada reflete a taxa de variação em um determinado ponto e como ela contribui para a compreensão da situação em análise.",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                softWrap: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child:  Text(
                "4. Finalmente, apresentem suas conclusões de forma clara e organizada.",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                softWrap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 309,
                height: 43,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff1578D4)),
                    elevation: MaterialStateProperty.all(5.0),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )) 
                  ),
                  onPressed: (){}, 
                  child: const Text(
                    "Criar lembrete",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato-Regular',
                      fontSize: 24,
                    ),
                  ),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                  width: 309,
                  height: 43,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff009C2C)),
                      elevation: MaterialStateProperty.all(5.0),
                      shadowColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ))
                    ),
                    onPressed: (){}, 
                    child: const Text(
                      "Concluído",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lato-Regular',
                        fontSize: 24,
                      ),
                    ),
                    ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
