import 'package:flutter/material.dart';
import "custom_enum.dart";

class CustomTabBarWidget extends StatefulWidget {
  @override
  _CustomTabBarWidgetState createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: enumLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: enumLength,
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: EnumPage.values.map((EnumPage page) {
                  return page.pageContent; // Enum'dan gelen sayfa içerikleri
                }).toList(),
              ),
            ),
            Container(
              height: 120,
              color: Color(0xFF054ba9),
              child: TabBar(
                controller: tabController,
                tabs: EnumPage.values.map((EnumPage page) {
                  return Tab(
                    icon: Icon(
                      page.icon,
                      color: tabController.index == EnumPage.values.indexOf(page) 
                          ? Colors.orange 
                          : Colors.white,
                    ),
                    text: page.label,
                  );
                }).toList(),
                labelColor: Colors.white, // Seçili sekmenin metin rengi
                unselectedLabelColor: Colors.white, // Seçili olmayan sekmelerin metin rengi
                indicatorColor: Colors.transparent, // Gösterge rengini gizlemek için
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}




 