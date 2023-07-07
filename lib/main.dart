import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "GridView Exampla",
    home: Scaffold(
      appBar: AppBar(title: Text("All about GridView")),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Container(
          color: Colors.green,
          child: Text("Hi"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.green,
          child: Text("Hi"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.green,
          child: Text("Hi"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.green,
          child: Text("Hi"),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.green,
          child: Text("Hi"),
          alignment: Alignment.center,
        ),

        Container(
          color: Colors.green,
          child: Text("Hi"),
          alignment: Alignment.center,
        ),
     
      ],
      );
  }
}