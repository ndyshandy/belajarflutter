import 'package:aplikasi_hello_world/presentation/animated_container/animated_container.dart';
import 'package:aplikasi_hello_world/presentation/custom_card/custom_card.dart';
import 'package:aplikasi_hello_world/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/animated', page: () => const AnimatedContainerPage()),
        GetPage(name: '/customcard', page: () => const CustomCardPage()),
      ],
      title: 'Belajar Flutter With Erico Darmawan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
