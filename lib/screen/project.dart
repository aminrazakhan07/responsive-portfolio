// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Here are some of the projects I have worked on.',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
