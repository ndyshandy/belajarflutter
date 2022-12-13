// ignore_for_file: unnecessary_const

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
        title: const Text(
          "Hero Animation & ClipRRect",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondPageHero();
                }));
              },
              child: Hero(
                transitionOnUserGestures: true,
                tag: "profile-pertama",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const SizedBox(
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
          const SizedBox(height: 10),
          const SizedBox(
            child: const Text(
              "Tap Pada Foto",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
