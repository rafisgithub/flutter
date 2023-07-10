import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'InkWell Widget',
    home: Scaffold(
      appBar: AppBar(
        title: Text("All about InkWell widget"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('hi');
      },
      child: Center(
        child: Container(
         height: 50,
          width: 100,
          alignment: Alignment.center,
          child: Text('Click me'),
          color: Colors.lightGreen,

        ),
      ),
    );
  }
}
