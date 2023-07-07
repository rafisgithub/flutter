import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'container',
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        height: 300,
        width: 300,
        child: Text("This is a Container"),
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 222, 172),
          shape: BoxShape.circle,
          border: Border.all(
            color: Color.fromARGB(255, 40, 10, 238),
            width: 10
          )
        ),
        // transform: Matrix4.rotationY(.5),
      ),
    );
  }
}