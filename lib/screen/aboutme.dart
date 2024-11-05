// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Here is a little about my background and skills.',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
