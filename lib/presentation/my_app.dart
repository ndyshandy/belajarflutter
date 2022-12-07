import 'package:aplikasi_hello_world/presentation/hero_clipRRect/first_page_hero.dart';
import 'package:aplikasi_hello_world/presentation/login_page_dribbble/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter With Erico Darmawan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPageHero(),
    );
  }
}
