import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'flutter Basics',
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  int _rValue = 0;
  void method(int value){
    setState(() {
      _rValue = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        child: Column(children: [
          Radio(
          value: 1, 
          groupValue: _rValue, 
          onChanged: (value){
            method(value!);
          },
          activeColor: Colors.pink,
          ),
          Radio(
          value: 2, 
          groupValue: _rValue, 
          onChanged: (value){
             method(value!);
          },
          activeColor: Colors.pink,
          ),
          Radio(
          value: 3, 
          groupValue: _rValue, 
          onChanged: (value){
            method(value!);
          }
          ,
          activeColor: Colors.pink,
          ),
        ]),
      ),
    );
  }
}