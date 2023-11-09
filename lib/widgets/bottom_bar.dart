import 'package:flutter/material.dart';
import 'package:maua_tasks/pages/alerts.dart';
import 'package:maua_tasks/pages/calendar.dart';
import '../pages/home.dart';
import '../pages/login.dart';
import '../pages/profile.dart';
// import '../pages/profile2.dart';
import '../pages/settings.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});
  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Center(
      child: Calendar(),
    ),
    const Center(
      child: Profile()
    ),
    const Center(
      child: Alerts(),
    ),
    const Center(
      child: Settings(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: _pages[_selectedIndex],
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          backgroundColor: const Color(0xff1578D4),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.white, size: 30,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.white, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Color.fromARGB(255, 214, 213, 213), size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.white, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, color: Colors.white, size: 30),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped, 
        ),
      ], 
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}