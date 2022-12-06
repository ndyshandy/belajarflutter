import 'package:flutter/material.dart';

class StackAlignPage extends StatelessWidget {
  const StackAlignPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack dan Align"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.grey[350],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.grey[350],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dolor arcu, semper vel accumsan sed, ultricies a est. Curabitur a dui mi. Donec id nunc eu diam commodo auctor eget non mi. Nullam sed enim ligula. Suspendisse convallis eu ex suscipit tempus. Maecenas semper orci risus, et rutrum orci blandit id. Maecenas eu lectus vitae augue convallis egestas. Suspendisse metus risus, varius quis tellus quis, malesuada egestas est. Donec sagittis purus a consectetur posuere. Vivamus consectetur, turpis fermentum tincidunt dignissim, mi ex porta arcu, id tempor quam est quis nisl. Vivamus mi nibh, convallis in aliquet vel, vestibulum ut velit.",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Curabitur in ipsum quis nibh bibendum faucibus sit amet non leo. Nulla arcu purus, accumsan a porttitor vel, fermentum in purus. Pellentesque ut libero eget ante iaculis porta. Maecenas bibendum sit amet felis vel fermentum. Pellentesque ornare eleifend tellus a consectetur. Morbi dignissim nulla ex, at tincidunt magna accumsan non. Etiam luctus placerat quam. Proin vehicula bibendum ultricies. Sed nec lorem sed justo accumsan vestibulum in eget sem. Nullam malesuada justo ultricies libero bibendum, vel varius nulla mollis. Ut sagittis ex sed sem fermentum sollicitudin. Nulla felis nibh, iaculis sit amet interdum eget, tempus at magna. Donec luctus, metus et suscipit condimentum, nisl quam gravida nisl, in ultrices turpis diam sed nulla.",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            // x= negatif ke kiri, positif ke kanan: y= negatif ke atas, positif ke bawah: 0= di tengah
            alignment: Alignment(0, 0.9),
            child: RaisedButton(
              onPressed: () {},
              child: Text("Button"),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
