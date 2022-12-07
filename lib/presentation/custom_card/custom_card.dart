import 'package:flutter/material.dart';

class CustomCardPage extends StatelessWidget {
  const CustomCardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFE5788),
                  Color(0xFFF56D5D),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(children: [
                  Opacity(
                    opacity: 0.05,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/water_pattern.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4),
                            ),
                            image: DecorationImage(
                                image: AssetImage("assets/images/sunset2.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Beautiful Sunset at Pangandaran Beach",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Posted on  ",
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "June 18, 2019",
                                      style: TextStyle(
                                        color: Colors.deepOrange[400],
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(flex: 10),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.grey[400],
                                    size: 18.0,
                                  ),
                                  // SizedBox(width: 5),
                                  Spacer(flex: 1),
                                  Text(
                                    "99",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  // SizedBox(width: 50),
                                  Spacer(flex: 5),
                                  Icon(
                                    Icons.comment,
                                    color: Colors.grey[400],
                                    size: 18.0,
                                  ),
                                  Spacer(flex: 1),
                                  Text(
                                    "888",
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(flex: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
