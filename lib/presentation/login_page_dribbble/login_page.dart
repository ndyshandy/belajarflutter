import 'package:flutter/material.dart';

class DribbbleLoginPage extends StatefulWidget {
  const DribbbleLoginPage({Key key}) : super(key: key);

  @override
  State<DribbbleLoginPage> createState() => _DribbbleLoginPageState();
}

class _DribbbleLoginPageState extends State<DribbbleLoginPage> {
  double getSmallCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallCircle(context) / 3,
            top: -getSmallCircle(context) / 3,
            child: Container(
              width: getSmallCircle(context),
              height: getSmallCircle(context),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2),
                    Color(0xFFFF6DA7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: -getBigCircle(context) / 4,
            top: -getBigCircle(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "dribbble",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: "Pacifico"),
                ),
              ),
              width: getBigCircle(context),
              height: getBigCircle(context),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB226B2),
                    Color(0xFFFF4891),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: -getBigCircle(context) / 2,
            bottom: -getBigCircle(context) / 2,
            child: Container(
              width: getBigCircle(context),
              height: getBigCircle(context),
              decoration: BoxDecoration(
                color: Color(0xFFF3E9EE),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                ),
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: [
                    methodTextField(
                        ikon: Icons.email,
                        labelteks: "Email:",
                        obSecureText: false),
                    SizedBox(height: 10),
                    methodTextField(
                        ikon: Icons.vpn_key,
                        labelteks: "Password:",
                        obSecureText: true),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                  child: Text(
                    "FORGOT PASSWORD?",
                    style: TextStyle(
                      color: Color(0xFFFF4891),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.amber,
                            onTap: () {},
                            child: Center(
                                child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFB226B2),
                              Color(0xFFFF4891),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      elevation: 0,
                      onPressed: () {},
                      child: Image(
                        image: AssetImage("assets/images/fb.png"),
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      elevation: 0,
                      onPressed: () {},
                      child: Image(
                        image: AssetImage("assets/images/twitter.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DON'T HAVE AN ACCOUNT?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFFF4891),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }

  TextField methodTextField({
    IconData ikon,
    String labelteks,
    bool obSecureText,
  }) {
    return TextField(
      obscureText: obSecureText,
      decoration: InputDecoration(
        icon: Icon(
          ikon,
          color: Color(0xFFFF4891),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFF4891),
          ),
        ),
        labelText: labelteks,
        labelStyle: TextStyle(
          color: Color(0xFFFF4891),
        ),
      ),
    );
  }
}
