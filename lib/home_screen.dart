import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        color: const Color(0xFF664343),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              if (constraints.maxWidth < 600) {
                return ListView(
                  children: generateContainers(),
                );
              } else if (constraints.maxWidth < 950) {
                return GridView.count(
                  crossAxisCount: 3,
                  children: generateContainers(),
                );
              } else {
                return GridView.count(
                  crossAxisCount: 6,
                  children: generateContainers(),
                );
              }
            }
        ),
      ),
    );
  }
}

List<Widget> generateContainers() {
  return List<Widget>.generate(12, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFF795757),
        border: Border.all(color: Color(0xFF3B3030),width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [

        ],
      ),
    );
  });
}