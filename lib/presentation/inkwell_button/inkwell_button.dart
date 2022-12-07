import 'package:flutter/material.dart';

class InkWellPage extends StatefulWidget {
  const InkWellPage({Key key}) : super(key: key);

  @override
  State<InkWellPage> createState() => _InkWellPageState();
}

class _InkWellPageState extends State<InkWellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text("Raised Button"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                          child: Text(
                        "InkWell Button",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
