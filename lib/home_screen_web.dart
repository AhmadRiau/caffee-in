import 'package:caffein/detail_screen.dart';
import 'package:caffein/model/coffee_data.dart';
import 'package:flutter/material.dart';

class HomeScreenWeb extends StatefulWidget {
  final int gridSize;
  const HomeScreenWeb({super.key, required this.gridSize});

  @override
  _HomeScreenWebState createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
  late int gridCount;
  String selectedRegion = 'Semua';

  @override
  void initState() {
    super.initState();
    gridCount = widget.gridSize;
  }

  @override
  void didUpdateWidget(covariant HomeScreenWeb oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.gridSize != widget.gridSize) {
      setState(() {
        gridCount = widget.gridSize;
      });
    }
  }

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
                    const Text(
                      'Daerah: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DropdownButton<String>(
                      value: selectedRegion,
                      onChanged: (String? newValue) {
                        setState(() {selectedRegion = newValue!;});
                      },
                      items: ['Semua', 'Mentaos', 'Loktabat Utara', 'Guntung Paikat', 'Landasan Ulin', 'Loktabat Selatan', 'Cempaka' ]
                          .map<DropdownMenuItem<String>>((String region) {
                            return DropdownMenuItem<String>(
                              value: region,
                              child: Text(region,
                                  style: const TextStyle(color: Color(0xFF3B3030))),
                            );
                          }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: gridCount,
                children: filteredList.map((coffeeData) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailScreen(coffeeData: coffeeData);
                      }));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                const BorderRadius.only(
                                    topLeft: Radius.circular(8), topRight: Radius.circular(8)
                                ),
                                child: Image.asset(coffeeData.imageAsset, fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                coffeeData.shopName,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: Text(coffeeData.region),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
