import 'package:aplikasi_hello_world/presentation/button_transform/colorful_button.dart';
import 'package:flutter/material.dart';

class ButtonTransformPage extends StatefulWidget {
  const ButtonTransformPage({Key key}) : super(key: key);

  @override
  State<ButtonTransformPage> createState() => _ButtonTransformPageState();
}

class _ButtonTransformPageState extends State<ButtonTransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorfulButton(
              mainColor: Colors.pink,
              secondColor: Colors.blue,
              ikonData: Icons.adb,
            ),
            ColorfulButton(
              mainColor: Colors.yellow,
              secondColor: Colors.green,
              ikonData: Icons.settings,
            ),
            ColorfulButton(
              mainColor: Colors.purple,
              secondColor: Colors.teal,
              ikonData: Icons.person,
            ),
            ColorfulButton(
              mainColor: Colors.orange,
              secondColor: Colors.cyan,
              ikonData: Icons.alarm,
            ),
          ],
        ),
      ),
    );
  }
}
