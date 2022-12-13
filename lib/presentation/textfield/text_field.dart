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
        title: const Text("Latihan Text Field"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(prefixIcon: Icon(Icons.person)),
              maxLength: 18,
              onChanged: (value) {
                setState(() {});
              },
              controller: textController,
            ),
            const SizedBox(height: 10),
            const Text(
              "Silahkan input teks",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Text(
              textController.text,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
