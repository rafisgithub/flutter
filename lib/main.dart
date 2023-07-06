import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "first app",
    home: Scaffold(body: MyApp2()),
  ));
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String txt = "";
  @override
  void initState() {
    txt = "Welcome statefull widget";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(txt),
         ElevatedButton(onPressed: (){
          
          setState(() {
            txt = "I am statefull wigdet";
          });
          print("OnPressed $txt");
         }, 
         child: Text("Change")
         )
        ]),
      ),
    );
  }
}




