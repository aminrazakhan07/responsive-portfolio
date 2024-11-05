// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mob_desk_portfolio/screen/aboutme.dart';
import 'package:mob_desk_portfolio/screen/home.dart';
import 'package:mob_desk_portfolio/screen/project.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (context) => HomeScreen(),
        'AboutScreen': (context) => AboutScreen(),
        'ProjectsScreen': (context) => ProjectsScreen(),
      },
    );
  }
}
