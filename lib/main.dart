import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      // routes: ,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: HomePageContent(),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,

      child: Center(child: Text('Hello container')),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
     decoration: BoxDecoration(
      color: Color.fromARGB(151, 10, 37, 214),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.black12,
        width: 10,
      )
     ),
     transform: Matrix4.rotationZ(0.1),
    );
  }
}