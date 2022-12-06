import 'package:aplikasi_hello_world/presentation/custom_card/custom_card.dart';
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
        title: 'Belajar Flutter With Erico Darmawan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CustomCardPage());
  }
}
