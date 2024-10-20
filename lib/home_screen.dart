import 'package:caffein/detail_screen.dart';
import 'package:caffein/model/coffee_data.dart';
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
      body: Column(
        children: [
          Container(
            color: const Color(0xFF795757),
            child: Text('Dropdown search disini'),
          ),

          Flexible(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final CoffeeData shopData = coffeeDataList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreenMobile(coffeeData: shopData);
                    }));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFFFFF0D1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:ClipRRect(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                                child: Image.asset(shopData.imageAsset,fit: BoxFit.contain),
                              ),
                            )
                        ),

                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  shopData.shopName,
                                  style: const TextStyle(fontSize: 16.0, color: Color(0xFF3B3030)),
                                ),
                                const SizedBox(height: 10.0,
                                ),
                                Text(
                                  shopData.address,
                                  style: const TextStyle(color: Color(0xFF3B3030))
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: coffeeDataList.length,
            ),
          ),
        ],
      ),
    );
  }
}
