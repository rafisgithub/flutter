import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "image widget",
    theme: ThemeData(
      primarySwatch: Colors.pink,
      visualDensity: VisualDensity.adaptivePlatformDensity
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("All about image Widget")),
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
        color: Colors.grey,
        // child: Image.network("https://picsum.photos/300/300"),
        // child: Image.asset('assets/images/Rafi.jpg'),
        // child: Image.file(File('/File Manager/Images/Download/apu.jpg')), problem ase
        // filepath
        // child: Image.memory(),problem ase
      ),
    );
  }
}
