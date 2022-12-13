import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          data: "https://www.persib.co.id/",
          version: 6,
          // backgroundColor: Colors.teal,
          // foregroundColor: Colors.pink,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(20),
          size: 300,
        ),
      ),
    );
  }
}
