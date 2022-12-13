// ignore_for_file: deprecated_member_use

import 'package:aplikasi_hello_world/presentation/navigasi/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
          child: const Text("LOGIN"),
        ),
      ),
    );
  }
}
