import 'package:caffein/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caffe.In',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        scaffoldBackgroundColor: const Color(0xFF664343),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Caffe.In'),
    );
  }
}

