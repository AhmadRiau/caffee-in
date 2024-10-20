import 'package:caffein/model/coffee_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:url_launcher/url_launcher.dart';

var textBold = const TextStyle(fontWeight: FontWeight.bold);

class DetailScreenMobile extends StatelessWidget {
  const DetailScreenMobile({super.key, required this.coffeeData});
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  coffeeData.imageAsset,
                  width: double.infinity, // agar gambar mengisi seluruh lebar
                  height: 300, // Tentukan tinggi untuk gambar
                  fit: BoxFit.cover, // agar gambar menyesuaikan ukuran kontainer
                ),
                Positioned(
                  bottom: 0, // Menempatkan teks di bagian bawah
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity, // Lebar container mengikuti lebar parent
                    padding: const EdgeInsets.all(16.0), // Berikan padding di sekitar teks
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black26,
                          Colors.black54,
                          Colors.black
                        ],
                      ),
                    ),
                    child: Text(
                      coffeeData.shopName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFFFFF0D1), // pastikan teks terlihat di atas gambar
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: const Color(0x99FFF0D1),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF3B3030),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              color: const Color(0xFFFFF0D1),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Icon(Icons.access_time),
                            const SizedBox(height: 8.0),
                            Text(coffeeData.openHour, style: textBold),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              onPressed:() => _launchLink(coffeeData.igLink),
                              icon: const FaIcon(FontAwesomeIcons.instagram),
                            ),
                            const SizedBox(height: 8.0),
                            Text(coffeeData.igName, style: textBold,),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              onPressed:() => _launchLink(coffeeData.gmapLink),
                              icon: const FaIcon(FontAwesomeIcons.mapLocation),
                            ),
                            const SizedBox(height: 8.0),
                            Text('Open Map', style: textBold),
                          ],
                        ),
                      ],
                    ),
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
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: coffeeData.imageSets.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InstaImageViewer(child: Image.asset(url)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

