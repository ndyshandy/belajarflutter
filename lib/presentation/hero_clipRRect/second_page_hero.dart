import 'package:flutter/material.dart';

class SecondPageHero extends StatelessWidget {
  const SecondPageHero({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation & ClipRRect",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Center(
          child: Hero(
            transitionOnUserGestures: true,
            tag: "profile-pertama",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Container(
                width: 300,
                height: 300,
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
