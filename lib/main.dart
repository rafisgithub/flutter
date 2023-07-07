import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stack Example",
    home: Scaffold(
      appBar: AppBar(title: Text("Stack Example")),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // alignment: Alignment.center,
        // overflow:overflow.visiblae
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 231, 223, 223),
            ),
          ),
          Positioned(
            bottom: -25,
            right: 10,
            child: Container(
              height: 50,
              width: 50,
              color: const Color.fromARGB(255, 175, 76, 84),
            ),
          ),
        ],
      ),
    );
  }
}
