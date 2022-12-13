import 'package:aplikasi_hello_world/presentation/custom_card/custom_card.dart';
import 'package:aplikasi_hello_world/presentation/hero_clipRRect/first_page_hero.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Page"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MyTabBar().preferredSize.height),
            child: Container(
              color: Colors.amber,
              child: MyTabBar(),
            ),
          ),
        ),
        body: TabBarView(children: [
          FirstPageHero(),
          CustomCardPage(),
        ]),
      ),
    );
  }

  TabBar MyTabBar() {
    return TabBar(
        indicator: BoxDecoration(
          color: Colors.red,
          border: Border(
            top: BorderSide(
              color: Colors.purple,
              width: 5,
            ),
          ),
        ),
        tabs: [
          Tab(
            icon: Icon(Icons.person),
            text: "Profile",
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: "Settings",
          ),
        ]);
  }
}
