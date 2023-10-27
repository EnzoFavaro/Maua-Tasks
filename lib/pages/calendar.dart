import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 3, now.day);
var lastDay = DateTime(now.year, now.month + 3, now.day);

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;

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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TableCalendar(
            focusedDay: now,
            firstDay: firstDay,
            lastDay: lastDay,
            calendarFormat: format,
            startingDayOfWeek: StartingDayOfWeek.sunday,

            headerStyle: const HeaderStyle(
              leftChevronIcon: Icon(Icons.chevron_left,size: 24,color: Colors.white,),
              rightChevronIcon: Icon(Icons.chevron_right,size: 24,color: Colors.white,),
              formatButtonVisible: false,
              formatButtonShowsNext: false,
              formatButtonTextStyle: TextStyle(color: Colors.white, fontSize: 12),
              titleTextStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
              titleCentered: true,
            ),

            calendarStyle: const CalendarStyle(
              outsideDaysVisible: false,

              selectedDecoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,),
              selectedTextStyle: TextStyle(color: Colors.black, fontSize: 16),

              todayDecoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,),
              todayTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),

              defaultDecoration: BoxDecoration(color: Colors.transparent,shape: BoxShape.circle,),
              defaultTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),

              weekendDecoration: BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
              weekendTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
            ),

            calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
              String text;
              if (day.weekday == DateTime.sunday) {
                text = 'Dom';
              } else if (day.weekday == DateTime.monday) {
                text = 'Seg';
              } else if (day.weekday == DateTime.tuesday) {
                text = 'Ter';
              } else if (day.weekday == DateTime.wednesday) {
                text = 'Qua';
              } else if (day.weekday == DateTime.thursday) {
                text = 'Qui';
              } else if (day.weekday == DateTime.friday) {
                text = 'Sex';
              } else if (day.weekday == DateTime.saturday) {
                text = 'Sab';
              } else {
                text = 'err';
              }
              return Center(
                  child: Text(text, style: const TextStyle(color: Colors.white))
              );
            }),
          ))
        ],
      ),
    );
  }
}
