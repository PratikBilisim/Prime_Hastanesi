
import 'package:flutter/material.dart';
import 'package:prime_hastanesi/custom_homepage.dart';

final int enumLength = EnumPage.values.length;
enum EnumPage { homepage, location, search, profile }


extension EnumPageExtension on EnumPage {
  IconData get icon {
    switch (this) {
      case EnumPage.homepage:
        return Icons.home;
      case EnumPage.location:
        return Icons.compare_arrows_sharp;
      case EnumPage.search:
        return Icons.search;
      case EnumPage.profile:
        return Icons.person;
    
    }
  }

  String get label {
    switch (this) {
      case EnumPage.homepage:
        return 'ANASAYFA';
      case EnumPage.location:
        return 'KONUM';
      case EnumPage.search:
        return 'ARA';
      case EnumPage.profile:
        return 'PROFİL';

    }
  }

  Widget get pageContent {
    switch (this) {
      case EnumPage.homepage:
        return Homepage();
      case EnumPage.location:
        return Center(child: Text('Konum '));
      case EnumPage.search:
        return Center(child: Text('Ara '));
      case EnumPage.profile:
        return Center(child: Text('Profil '));

    }
  }
}





