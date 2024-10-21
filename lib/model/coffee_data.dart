class CoffeeData {
  String shopName;
  String address;
  String region;
  String description;
  String igName;
  String igLink;
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
    required this.igName,
    required this.igLink,
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
    region: 'Mentaos',
    description:
    'Strategis dan mudah untuk ditemukan membuat Kala menjadi tempat hits bagi kawula muda di Kota Banjarbaru. Hawa minimalis dan modern membuat Kala terasa estetik dan cocok buat kamu yang mengincar potret instagramable. \n\n Area indoor dan outdoor yang sama nyamannya, plus akses drive thru yang membuatmu merasa nyaman dan praktis berkunjung ke Kala Cafe and Drive Thru Banjarbaru.',
    igName: '@kala.idn',
    igLink: 'https://www.instagram.com/kala.idn/',
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
    'Cinnamon, dengan dominasi warna merah bata yang memanjakan mata, menjadi salah satu tempat ikonik di pusat kota Banjarbaru. Lokasinya yang strategis selalu menarik perhatian, ditambah dengan desain modern estetik yang membuatnya cocok sebagai latar foto untuk menghiasi feed Instagram kamu. Kafe ini memadukan suasana urban yang stylish dengan sentuhan kenyamanan, menjadikannya tempat yang menarik untuk bersantai maupun berfoto ria.',
    igName:'@cinnamon.bdj',
    igLink: 'https://www.instagram.com/cinnamon.bdj/',
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
    'Socotra, dengan gaya elegan yang terinspirasi dari arsitektur Eropa, benar-benar menjadi salah satu yang terbaik di kelasnya. Kafe ini tidak hanya menawarkan desain yang mewah, tetapi juga mampu menampung banyak pengunjung tanpa mengorbankan kenyamanan. Selain itu, Socotra memberikan pelayanan istimewa dengan menawarkan ruang VIP eksklusif, sehingga kamu bisa menikmati pengalaman yang lebih privat dan personal. Baik untuk acara khusus maupun sekadar bersantai, Socotra memberikan sentuhan kemewahan yang sulit ditandingi.',
    igName: '@soccotra.id',
    igLink: 'https://www.instagram.com/soccotra.id/',
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
  CoffeeData(
    shopName: 'Kopi Gang Micro Roastery',
    address: 'Jalan.perambaian 3,Gang Kastela 6 Sungai Ulin, Guntung Paikat, Kec. Banjarbaru Selatan',
    region: 'Guntung Paikat',
    description:
    'Kopi Gang, dengan pendekatan klasiknya, sering kali disebut sebagai `tempat ngopi, bukan cafe` oleh para pengunjung setianya. Meski begitu, tempat ini telah bertahan lama dan terus berkembang, menjadi pilihan favorit di kalangan pencinta kopi sejati. Konsistensi dalam menyajikan kopi berkualitas membuatnya selalu diminati, namun jangan lupa untuk mencoba menu makanannya juga—terutama burgernya yang jadi andalan! Kopi Gang berhasil menghadirkan suasana yang autentik dan ramah, cocok untuk bersantai sambil menikmati sajian lezat.',
    igName: '@kopigang',
    igLink: 'https://www.instagram.com/kopigang/',
    openHour: '09.00 - 23.00',
    menuNames:[
      'Milk Coffee','Vietnam Drip','Ketan Mangga'
    ],
    menuPrices:[
      'Rp. 20.000', 'Rp. 15.000', 'Rp. 15.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/bLoe1SfGdST7xJoCA',
    imageAsset: 'assets/images/kopi-gang-1.jpg',
    imageSets: [
      'assets/images/kopi-gang-2.jpg',
      'assets/images/kopi-gang-3.jpg',
      'assets/images/kopi-gang-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'Positif Space & Eatery',
    address: 'Jl. Trikora, Bundaran Palam, Guntung Manggis, Kec. Landasan Ulin',
    region: 'Landasan Ulin',
    description:
    'Suasana rumahan yang nyaman dan menyediakan bahan bacaan untukmu yang berkunjung, Pos Positif Space & Eatery menjadi yang utama.\n\nTidak melupakan lokal, mereka juga menyediakan masakan khas banjar. Ekosistem yang mereka berikan, coba membuatmu terbawa dalam suasana apapun: baik bekerja, bersantai dan mengobrol.',
    igName: '@positif.spaceeatery',
    igLink: 'https://www.instagram.com/positif.spaceeatery/',
    openHour: '10.00 - 23.00\nJumat : 16.00 - 23.00',
    menuNames:[
      'Kopi Susu Katarsis (Creamy)','Green Tea','Caramel Creamy Latte'
    ],
    menuPrices:[
      'Rp. 24.000', 'Rp. 25.000', 'Rp. 30.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/1fQ9yGqNfTxUuSFYA',
    imageAsset: 'assets/images/positif-1.jpg',
    imageSets: [
      'assets/images/positif-2.jpg',
      'assets/images/positif-3.jpg',
      'assets/images/positif-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'Kedai Jajanan Djadoel',
    address: 'Jl. Karang So, Loktabat Utara, Kec. Banjarbaru Utara, Kota Banjar Baru, Kalimantan Selatan 70714',
    region: 'Loktabat Utara',
    description: 'Jajanan jadoel lama hingga terasa kekinian, Djadoel menjadi satu-satunya yang menyediakan lengkap. Menu beragam dengan harga yang bersahabat dengan dompet. Membuatmu wajib untuk berkunjung ke sini.',
    igName: '@kedai_djadoel',
    igLink: 'https://www.instagram.com/kedai_djadoel/',
    openHour: '08.00-24.00',
    menuNames:[
      'Green Tea Shake','Red Velvet Special','Roti Charlie'
    ],
    menuPrices:[
      'Rp. 25.000', 'Rp. 25.000', 'Rp. 18.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/WK17uGxk1TFQZMcj8',
    imageAsset: 'assets/images/djadul-1.jpg',
    imageSets: [
      'assets/images/djadul-2.jpg',
      'assets/images/djadul-3.jpg',
      'assets/images/djadul-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'Aero Cafe',
    address: 'Jalan Yudhistira, Loktabat Utara, Kec. Banjarbaru Utara',
    region: 'Loktabat Utara',
    description:
    'Geng Gigs dan muda-mudi Banjarbaru biasa berkumpul di Aero Cafe. Bangunan berlantai 2 tersebut, menjadi pilihan hits beberapa waktu ke belakang. Menu yang mereka sediakan juga terbilang bervariatif dan terjangkau, wajib kamu coba Aero Cafe',
    igName: '@aero.coffee.official',
    igLink: 'https://www.instagram.com/aero.coffee.official/',
    openHour: '15.00 - 23.30',
    menuNames:[
      'Simple Passenger Creamy Coffee','Aertoast Choco Cheese','Banana Coffee'
    ],
    menuPrices:[
      'Rp. 30.000', 'Rp. 28.000', 'Rp. 30.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/pXSV8JsmiZ2Y8MRJ9',
    imageAsset: 'assets/images/aero-1.jpg',
    imageSets: [
      'assets/images/aero-2.jpg',
      'assets/images/aero-3.jpg',
      'assets/images/aero-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'Sabar Menanti Coffe',
    address: 'Jl.Pondok Kopi, Jl. RO Ulin No.a3, Loktabat Selatan',
    region: 'Loktabat Selatan',
    description:
    'Menawarkan suasana nyaman dengan menu ringan hingga berat, Sabar Menanti Coffe Roaster bisa menjadi pilihan kamu untuk menikmati waktu istirahat dan nongkrong. Fasilitas yang terbilang lengkap cukup untuk membuatmu santai berlama-lama di Sabar Menanti',
    igName: '@sabarmenanticoffee',
    igLink: 'https://www.instagram.com/sabarmenanticoffee/',
    openHour: '07.30–21.00',
    menuNames:[
      'Espresso','Omakase Coffee','Classic Passionade'
    ],
    menuPrices:[
      'Rp. 40.000', 'Rp. 50.000', 'Rp. 45.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/MDG8gx1NBBAa7Su88',
    imageAsset: 'assets/images/sabar-1.jpg',
    imageSets: [
      'assets/images/sabar-2.jpg',
      'assets/images/sabar-3.jpg',
      'assets/images/sabar-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'A Day With Us',
    address: 'Jl. RP. Soeparto, Jl. Mahakam, Loktabat Utara, Kec. Banjarbaru Utara',
    region: 'Loktabat Utara',
    description:
    '“Hidden gem-nya Banjarbaru,” ucap salah satu ulasan. Berlokasi di dalam gang-gang membuat A Day With Us pilihan berbeda dari yang lainnya, karena jauh dari keramaian. Tempat mungil terawat berkonsep rumahan ini menyediakan menu-menu rekomendasi yang tentunya akan menggugah kamu untuk berkunjung, segera mampir ke sini ',
    igName: '@adaywithus.cr',
    igLink: 'https://www.instagram.com/adaywithus.cr/',
    openHour: 'Senin Tutup\n08.00–23.00',
    menuNames:[
      'Black Squash','Cappucino','Honey Garlic Chicken'
    ],
    menuPrices:[
      'Rp. 37.500', 'Rp. 32.000', 'Rp.42.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/R8VuygNzYTewhNFv7',
    imageAsset: 'assets/images/day-1.jpg',
    imageSets: [
      'assets/images/day-2.jpg',
      'assets/images/day-3.jpg',
      'assets/images/day-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'DK Kafe Banjarbaru',
    address: 'Jl. H. Mistar Cokrokusumo, Cempaka, Kec. Banjarbaru Selatan',
    region: 'Cempaka',
    description:
    'Ada yang masih ingat Hero Time Zone Simpang Empat? Meskipun kini sudah tutup, tempat itu kini disulap menjadi cafe pinggir jalan kota yang menarik.\n\nBersantai menikmati suasana Kota Banjarbaru sore menuju malam, DK Kafe bisa menjadi list baru untuk tempat nongkrongmu. Tidak sulit untuk menemukan karena langsung terlihat di jalan utama, kunjungi tepat di samping Terminal Banjarbaru.',
    igName: '@dkkafe_bjb',
    igLink: 'https://www.instagram.com/dkkafe_bjb/',
    openHour: 'Kamis Tutup\n16.00 - 01.00',
    menuNames:[
      'Aneka Kopi Nusantara','Aneka Es Susu','Party Platter'
    ],
    menuPrices:[
      'Rp. 25.000', 'Rp. 24.000', 'Rp. 36.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/CBDRPVR5BesgsGYd9',
    imageAsset: 'assets/images/dkk-1.jpg',
    imageSets: [
      'assets/images/dkk-2.jpg',
      'assets/images/dkk-3.jpg',
      'assets/images/dkk-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'Manukari',
    address: 'Jl. Bina Murni No.88, Guntung Payung, Kec. Landasan Ulin',
    region: 'Landasan Ulin',
    description:
    'Manukari hadir untuk pertama kalinya di Banjarbaru, menawarkan suasana hangat yang nyaman untuk dinikmati. Tempat ini menyediakan area indoor yang tenang dan area outdoor yang cocok bagi mereka yang ingin merasakan udara segar. Dengan dua pilihan suasana tersebut, kamu bisa bersantai, menghabiskan waktu bersama teman, atau sekadar menikmati waktu luang dengan nyaman.',
    igName: '@manukari.id',
    igLink: 'https://www.instagram.com/manukari.id/',
    openHour: '08.00-22.00\nWeekend : 08.00-23.00',
    menuNames:[
      'Cold Brew','Latte','Calamari Ring'
    ],
    menuPrices:[
      'Rp. 45.000', 'Rp. 42.000', 'Rp. 41.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/iFviNPQyyoE1oJnD6',
    imageAsset: 'assets/images/manukari-1.jpg',
    imageSets: [
      'assets/images/manukari-2.jpg',
      'assets/images/manukari-3.jpg',
      'assets/images/manukari-4.jpg',
    ],
  ),
  CoffeeData(
    shopName: 'Kean Coffe',
    address: 'Jl. Kayumanis No.8, Loktabat Utara, Kec. Banjarbaru Utara',
    region: 'Loktabat Utara',
    description:
    'Kean Coffee dikenal sebagai salah satu kafe estetik di Banjarbaru, berkat desainnya yang cozy dan instagramable. Dengan suasana yang nyaman dan area yang luas, kafe ini menjadi tempat favorit banyak orang untuk berkumpul atau bersantai. Beragam pilihan menu yang ditawarkan, dengan harga yang ramah untuk berbagai kalangan, menjadikan Kean Coffee tempat yang tepat untuk dicoba, baik untuk sekadar ngopi santai maupun makan bersama teman.',
    igName: '@kean.coffee',
    igLink: 'https://www.instagram.com/kean.coffee/',
    openHour: '09.00-23.00',
    menuNames:[
      'Litchi Kiwiland','Moji Lemonade','Beef Blackpepper Rice Bowl'
    ],
    menuPrices:[
      'Rp. 35.000', 'Rp. 35.000', 'Rp. 43.000'
    ],
    gmapLink : 'https://maps.app.goo.gl/AX9H3gbE3qay1vUw6',
    imageAsset: 'assets/images/kean-1.jpg',
    imageSets: [
      'assets/images/kean-2.jpg',
      'assets/images/kean-3.jpg',
      'assets/images/kean-4.jpg',
    ],
  ),
];