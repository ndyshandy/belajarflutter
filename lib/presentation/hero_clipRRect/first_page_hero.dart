import 'package:aplikasi_hello_world/presentation/hero_clipRRect/second_page_hero.dart';
import 'package:flutter/material.dart';

class FirstPageHero extends StatelessWidget {
  const FirstPageHero({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation & ClipRRect",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPageHero();
            }));
          },
          child: Hero(
            transitionOnUserGestures: true,
            tag: "profile-pertama",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
