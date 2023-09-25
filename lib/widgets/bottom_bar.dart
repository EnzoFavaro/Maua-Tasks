import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});
  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;

  // Lista de páginas para exibir quando os ícones são clicados
  final List<Widget> _pages = [
    // Página 1
    const Center(
      child: Text(''),
    ),
    // Página 2
    const Center(
      child: Text(''),
    ),
    // Página 3
    const Center(
      child: Text(''),
    ),
    // Página 4
    const Center(
      child: Text(''),
    ),
    // Página 5
    const Center(
      child: Text(''),
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