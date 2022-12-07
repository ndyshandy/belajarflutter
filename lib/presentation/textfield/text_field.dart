import 'package:flutter/material.dart';

class ContohTextField extends StatefulWidget {
  const ContohTextField({Key key}) : super(key: key);

  @override
  State<ContohTextField> createState() => _ContohTextFieldState();
}

class _ContohTextFieldState extends State<ContohTextField> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Text Field"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.person)),
              maxLength: 18,
              onChanged: (value) {
                setState(() {});
              },
              controller: textController,
            ),
            Text(
              textController.text,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
