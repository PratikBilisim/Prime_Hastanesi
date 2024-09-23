import 'package:flutter/material.dart';
import 'package:prime_hastanesi/custom_TabBar_widget.dart';

import 'custom_appbar.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => AuthViewState();
}
class AuthViewState extends State<AuthView> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbarWidget(
        onPressed: () {
          print("appbar");
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomTabBarWidget(), 
          ),
        ],
      ),
    );
  }
}

