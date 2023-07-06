import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "first app",
      home: Scaffold(
        body: MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Center(
          child: Text("Hello world"),
        );
    
  }
}