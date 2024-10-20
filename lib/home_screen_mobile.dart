import 'package:caffein/detail_screen.dart';
import 'package:caffein/model/coffee_data.dart';
import 'package:flutter/material.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key, required this.title});

  final String title;

  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  String selectedRegion = 'Semua';

  final List<String> regions = ['Semua', 'Banjarbaru Utara', 'Loktabat Utara'];

  @override
  Widget build(BuildContext context) {
    List<CoffeeData> filteredList = coffeeDataList
        .where((shop) => selectedRegion == 'Semua' || shop.region == selectedRegion)
        .toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFFFFF0D1),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    const Text('Filter : ', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold,
                    ),),
                    DropdownButton<String>(
                      value: selectedRegion,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedRegion = newValue!;
                        });
                      },
                      items: regions.map<DropdownMenuItem<String>>((String region) {
                        return DropdownMenuItem<String>(
                          value: region,
                          child: Text(region, style: const TextStyle(color: Color(0xFF3B3030))),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final CoffeeData shopData = filteredList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailScreen(coffeeData: shopData);
                      }));
                    },
                    child: Card(
                      margin: const EdgeInsets.all(10.0),
                      color: const Color(0xFFFFF0D1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image.asset(shopData.imageAsset,
                                    fit: BoxFit.cover),
                              ),
                            ),
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
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3B3030)),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(shopData.address,
                                      style: const TextStyle(
                                          color: Color(0xFF3B3030)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: filteredList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}