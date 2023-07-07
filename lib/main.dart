import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Card",
    home: Scaffold(
      appBar: AppBar(
        title: Text("All about Text widget"),
        ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Color.fromARGB(221, 14, 6, 6),
        child: Text(
          "Hi this Text Widgets examaple.We will discuss here all about Text widget and it's properties",
          textAlign: TextAlign.center,
          textScaleFactor: 2,
          // overflow: TextOverflow.ellipsis,
          maxLines: 4,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
            wordSpacing: 10,
       
          ),
        ),
      ),
    );
  }
}