import 'package:flutter/material.dart';
// import 'package:maua_tasks/pages/home.dart';
import 'package:maua_tasks/pages/login.dart';
// import 'package:maua_tasks/pages/profile.dart';
// import '../widgets/task.dart';
import '../widgets/bottom_bar.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting('pt_BR', "null").then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNavigationWidget(),
    );
  }
}