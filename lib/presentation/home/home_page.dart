// ignore_for_file: deprecated_member_use

import 'package:aplikasi_hello_world/presentation/animated_container/animated_container.dart';
import 'package:aplikasi_hello_world/presentation/appbar/appbar_custom_size.dart';
import 'package:aplikasi_hello_world/presentation/button_transform/button_transform.dart';
import 'package:aplikasi_hello_world/presentation/custom_card/custom_card.dart';
import 'package:aplikasi_hello_world/presentation/flexible_widget/flexible_widget.dart';
import 'package:aplikasi_hello_world/presentation/hero_clipRRect/first_page_hero.dart';
import 'package:aplikasi_hello_world/presentation/inkwell_button/inkwell_button.dart';
import 'package:aplikasi_hello_world/presentation/login_page_dribbble/login_page.dart';
import 'package:aplikasi_hello_world/presentation/media_query/media_query.dart';
import 'package:aplikasi_hello_world/presentation/navigasi/login_page.dart';
import 'package:aplikasi_hello_world/presentation/qr_code_page/qr_code_page.dart';
import 'package:aplikasi_hello_world/presentation/stack/stack_align.dart';
import 'package:aplikasi_hello_world/presentation/tabBar/tabBar_page.dart';
import 'package:aplikasi_hello_world/presentation/textfield/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () => Get.to(const AnimatedContainerPage()),
                child: const Text("Animated Container Page")),
            TextButton(
                onPressed: () => Get.to(const CustomCardPage()),
                child: const Text("Custom Card page")),
            InkWell(
              onTap: () => Get.to(const FlexiblePage()),
              child: const Text("Flexible Page"),
            ),
            ElevatedButton(
                onPressed: () => Get.to(const FirstPageHero()),
                child: const Text("Hero & ClipRRect")),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => Get.to(const InkWellPage()),
                    child: const Center(
                        child: Text(
                      "InkWell Page",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () => Get.to(const DribbbleLoginPage()),
                child: const Text("Dribbble Login Page")),
            OutlinedButton(
                onPressed: () => Get.to(const MediaQueryPage()),
                child: const Text("Media Query Page")),
            RaisedButton(
              onPressed: () => Get.to(const LoginPage()),
              child: const Text("Navigasi & Card Page"),
            ),
            ElevatedButton.icon(
              onPressed: () => Get.to(const StackAlignPage()),
              icon: const Icon(Icons.android),
              label: const Text("Stack & Align Page"),
            ),
            ElevatedButton.icon(
              onPressed: () => Get.to(const ContohTextField()),
              icon: const Icon(Icons.animation),
              label: const Text("Text Field Page"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const AppBarWithCustomSize()),
              child: const Text("AppBar With Custom Size Page"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const TabBarPage()),
              child: const Text("TabBar Page"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const QrCodePage()),
              child: const Text("QR Code Page"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const ButtonTransformPage()),
              child: const Text("Button Transform Page"),
            ),
          ],
        ),
      ),
    );
  }
}
