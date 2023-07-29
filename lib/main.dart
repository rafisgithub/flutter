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
        title: Text("Checkbox widget"),
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
  bool _cValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple)
        ),
        child: Transform.scale(
          scale: 1,
          child: Checkbox(
          value: _cValue,
          onChanged: (status){
            print(status);
            setState(() {
              _cValue = status!;
            });
            
          },
          activeColor: Colors.green,
          checkColor: Colors.red,
          // tristate: true,
          ),
        ),
      ),
    );
  }
}