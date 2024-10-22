import 'package:caffein/model/coffee_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:url_launcher/url_launcher.dart';

var textHeader = const TextStyle(fontWeight: FontWeight.bold, fontSize: 24);
var textBold = const TextStyle(fontWeight: FontWeight.bold, fontSize: 12);

class DetailScreenWeb extends StatelessWidget {
  const DetailScreenWeb({super.key, required this.coffeeData});

  final CoffeeData coffeeData;
  Future<void> _launchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('Coffee Shop Information')),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1150 ? 800 : 1150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Detail content
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.8,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFFFF0D1),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Text(coffeeData.shopName, style: textHeader,)
                              ),
                              Container(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Text(coffeeData.address, textAlign: TextAlign.center,)
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: <Widget>[
                                        const Icon(Icons.access_time),
                                        const SizedBox(height: 8.0),
                                        Text(coffeeData.openHour, style: textBold, textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          onPressed:() => _launchLink(coffeeData.igLink),
                                          icon: const FaIcon(FontAwesomeIcons.instagram),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text(coffeeData.igName, style: textBold, textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          onPressed:() => _launchLink(coffeeData.gmapLink),
                                          icon: const FaIcon(FontAwesomeIcons.mapLocation),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text('Open Map', style: textBold,textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 20,
                                thickness: 2,
                                color: Color(0xFF3B3030),
                              ),
                              Text(
                                coffeeData.description,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                              const Divider(
                                height: 20,
                                thickness: 2,
                                color: Color(0xFF3B3030),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Menu Signature:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Column(
                                    children: List.generate(coffeeData.menuNames.length, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Expanded(flex: 2,child: Text(coffeeData.menuNames[index],)),
                                            Expanded(flex: 1,child: Text(coffeeData.menuPrices[index])),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                    const Padding(padding: EdgeInsets.all(8)),

                    // Image content
                    Flexible(
                      flex: 3,
                      child: SizedBox(
                        width: 600,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: InstaImageViewer(
                            backgroundColor: const Color(0x003B3030),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                coffeeData.imageAsset,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(8)),

                    // Gallery content
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(6, 16, 6, 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF0D1),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Column(
                          children: [
                            Text("Gallery", style: textHeader),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*0.7,
                              child: ListView(
                                children: coffeeData.imageSets.map((source) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: InstaImageViewer(
                                          backgroundColor: const Color(0x003B3030),
                                          child: Image.asset(source)
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

