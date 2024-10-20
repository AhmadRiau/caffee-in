class CoffeeData {
  String shopName;
  String address;
  String region;
  String description;
  String instagram;
  String openHour;
  List<String> menuNames;
  List<String> menuPrices;
  String gmapLink;
  String imageAsset;
  List<String> imageSets;

  CoffeeData({
    required this.shopName,
    required this.address,
    required this.region,
    required this.description,
    required this.instagram,
    required this.openHour,
    required this.menuNames,
    required this.menuPrices,
    required this.gmapLink,
    required this.imageAsset,
    required this.imageSets,
  });
}
var coffeeDataList = [
  CoffeeData(
    shopName: 'Kala Cafe',
    address: ' Jl. RP Soeparto, Mentaos, Kec. Banjarbaru Utara, Kota Banjar Baru',
    region: 'Banjarbaru Utara',
    description:
    'Strategis dan mudah untuk ditemukan membuat Kala menjadi tempat hits bagi kawula muda di Kota Banjarbaru. Hawa minimalis dan modern membuat Kala terasa estetik dan cocok buat kamu yang mengincar potret instagramable. \n Area indoor dan outdoor yang sama nyamannya, plus akses drive thru yang membuatmu merasa nyaman dan praktis berkunjung ke Kala Cafe and Drive Thru Banjarbaru.',
    instagram: 'https://www.instagram.com/kala.idn/',
    openHour: '09.00 - 23.00',
    menuNames:[
      'Himalayan Latte', 'Kopi Kala', 'Butterscotch Latte'
    ],
    menuPrices:[
      'Rp. 29.000', 'Rp. 25.000', 'Rp. 32.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/VqmHvB3dPwfGazrr5',
    imageAsset: 'assets/images/kala-1.jpeg',
    imageSets: [
      'assets/images/kala-2.jpeg',
      'assets/images/kala-3.jpeg',
      'assets/images/kala-4.jpeg',
    ],
  ),
  CoffeeData(
    shopName: 'Cinnamon.bdj',
    address: 'Jl. Pangeran Suriansyah No.11, Loktabat Utara, Kec. Banjarbaru Utara, Kota Banjar Baru, Kalimantan Selatan',
    region: 'Loktabat Utara',
    description:
    'Merah bata memanjakan mata, Cinnamon tempatnya. Berada di posisi pusat kota Banjarbaru membuat tempat ini menjadi perhatian selalu, dengan gaya modern estetik cocok mengisi gaya di feed instagram kamu.',
    instagram: 'https://www.instagram.com/cinnamon.bdj/',
    openHour: '09.00 - 22.00',
    menuNames:[
      'Sweet Coffee Pandan', 'Snowy White', 'Pasta Carbonara'
    ],
    menuPrices:[
      'Rp. 33.000', 'Rp. 33.000', 'Rp. 55.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/9ByyFxBYwCAVFV9F6',
    imageAsset: 'assets/images/cinamon-1.jpg',
    imageSets: [
      'assets/images/cinamon-2.jpg',
      'assets/images/cinamon-3.jpg',
      'assets/images/cinamon-4.jpeg',
    ],
  ),
  CoffeeData(
    shopName: 'Soccotra Indonesia',
    address: 'Jl. Pangeran Suriansyah, Loktabat Utara, Kec. Banjarbaru Utara, Kota Banjar Baru, Kalimantan Selatan',
    region: 'Loktabat Utara',
    description:
    'Bergaya elegan ala-ala eropa, Socotra termasuk yang juara. Mampu menampung banyak pengunjung, Socotra juga tak lupa memberikan pelayanan luar biasa, dengan menyediakan ruang VIP untukmu.',
    instagram: 'https://www.instagram.com/soccotra.id/',
    openHour: '08.00 - 23.00',
    menuNames:[
      'Oathside Shortie','Aren Latte','Vietnam Drip'
    ],
    menuPrices:[
      'Rp. 69.000', 'Rp. 58.000', 'Rp. 45.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/nA2idxkCaQUHnRoV6',
    imageAsset: 'assets/images/soccotra-3.jpg',
    imageSets: [
      'assets/images/soccotra-2.jpg',
      'assets/images/soccotra-1.jpg',
      'assets/images/soccotra-4.jpg',
    ],
  ),
];