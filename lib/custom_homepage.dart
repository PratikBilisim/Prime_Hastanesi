import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Ekranın her iki yanından boşluk
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Sol hizalama
          children: [
            Align(
              alignment: Alignment.topRight, // Sağa hizalama
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Butona etrafında boşluk bırakma
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    print('Menü butonuna tıklandı!');
                  },
                  iconSize: 40.0,
                  color: Color(0xFF054ba9),
                ),
              ),
            ),
            // Resimli butonların bulunduğu Row
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom:120.0), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCircleButton('assets/pratikbilisim.jpeg', 70), // Buton boyutu
                    buildCircleButton('assets/pratikbilisim.jpeg', 70),
                    buildCircleButton('assets/pratikbilisim.jpeg', 70),
                    buildCircleButton('assets/pratikbilisim.jpeg', 70),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1),
           Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom:120.0), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCircleButton('assets/pratikbilisim.jpeg', 70), // Buton boyutu
                    buildCircleButton('assets/pratikbilisim.jpeg', 70),
                    buildCircleButton('assets/pratikbilisim.jpeg', 70),
                    buildCircleButton('assets/pratikbilisim.jpeg', 70),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCircleButton(String imagePath, double size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Butonlar arasında boşluk
      child: ElevatedButton(
        onPressed: () {
          print('Butona tıklandı!');
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: Colors.transparent, // Daire şekli
          padding: EdgeInsets.all(0), // İç boşluk
          shadowColor: Colors.transparent, // Gölgeyi kaldırmak için
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: size / 2, 
        ),
      ),
    );
  }
}
