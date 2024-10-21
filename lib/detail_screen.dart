import 'package:caffein/detail_screen_mobile.dart';
import 'package:caffein/detail_screen_web.dart';
import 'package:caffein/model/coffee_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.coffeeData});
  final CoffeeData coffeeData;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return DetailScreenMobile(coffeeData: coffeeData);
        } else {
          return DetailScreenWeb(coffeeData: coffeeData);
        }
      },
    );
  }
}