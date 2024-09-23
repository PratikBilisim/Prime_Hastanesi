import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onPressed;
  const CustomAppbarWidget({Key? key, required this.onPressed}) : super(key: key);


@override
Widget build(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(200.0), 
    child: AppBar(
      elevation: 0,
      flexibleSpace: Stack(
        children: [
          Container(
            height: 200.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4dbad6), Color(0xFF054ba9)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
Positioned(
            bottom: 15.0,
            right: 10.0,
            child: Container(
              width: 40.0,  // Butonun genişliği
              height: 40.0, // Butonun yüksekliği
              decoration: const BoxDecoration(
                color: Colors.white, 
                shape: BoxShape.circle, 
              ),
              child: IconButton(
                icon: const Icon(Icons.access_alarm_sharp),
                onPressed: () {
                
                },
                iconSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

  @override
   Size get preferredSize => const Size.fromHeight(200.0 - kToolbarHeight);
}

