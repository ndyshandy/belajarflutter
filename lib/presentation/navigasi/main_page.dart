// ignore_for_file: deprecated_member_use

import 'package:aplikasi_hello_world/presentation/navigasi/login_page.dart';
import 'package:aplikasi_hello_world/presentation/navigasi/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: const Text("Main Page"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/new_pattern.png"),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat,
              )),
        ),
      ),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Colors.deepPurple[200],
            ),
          ),
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        Icon(Icons.account_box),
                        SizedBox(width: 5),
                        Text("Account Box"),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Shandy Mulyajaya"),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()),
                      );
                    },
                    child: const Text("SECOND PAGE"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 130,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text("LOG OUT"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
