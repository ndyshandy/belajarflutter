import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({Key key}) : super(key: key);

  @override
  State<MediaQueryPage> createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query or Responsive"),
      ),
      body: Stack(children: [
        (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: generateContainersColumn,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: generateContainersRow,
              ), // )
      ]),
    );
  }

  List<Widget> get generateContainersColumn {
    return [
      Container(
        height: 100,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.red,
      ),
      Container(
        height: 100,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.green,
      ),
      Container(
        height: 100,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.blue,
      ),
    ];
  }

  List<Widget> get generateContainersRow {
    return [
      Container(
        height: MediaQuery.of(context).size.height / 2,
        width: 200,
        color: Colors.red,
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        width: 200,
        color: Colors.green,
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2,
        width: 200,
        color: Colors.blue,
      ),
    ];
  }
}
