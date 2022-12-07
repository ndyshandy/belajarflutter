import 'package:aplikasi_hello_world/presentation/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  // agar layar tidak bisa digulingkan atau jadi landscape
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(const MyApp());
  // });
  runApp(const MyApp());
}
