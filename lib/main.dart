import 'package:flutter/material.dart';
import 'package:maua_tasks/pages/login.dart';
import 'package:maua_tasks/pages/profile.dart';
import '../widgets/task.dart';
import '../widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login(),
    );
  }
}