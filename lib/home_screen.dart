import 'package:caffein/home_screen_mobile.dart';
import 'package:caffein/home_screen_web.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final dynamic title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFF3B3030),
            title: Text(
              title,
              style: const TextStyle(
                color: Color(0xFFFFF0D1),
              ),
            ),
            iconTheme: const IconThemeData(
              color: Color(0xFF3B3030),
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return HomeScreenMobile(title: title);
              } else if (constraints.maxWidth <= 1000) {
                return const HomeScreenWeb(gridSize: 3);
              } else {
                return const HomeScreenWeb(gridSize: 4);
              }
            },
          ),
        );
      },
    );
  }
}