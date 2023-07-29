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
  // void method(int value){
  //   setState(() {
  //     _rValue = value;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        child: Column(children: [
         RadioListTile(
          value: 1, 
          groupValue: _rValue, 
          onChanged: (Value){
            setState(() {
              _rValue = Value!;
            });
          },
          title: Text('Windows'),
          subtitle: Text('C'),
          secondary: Icon(Icons.window),
          selected: _rValue == 1?true:false,
          ),
         RadioListTile(
          value: 2, 
          groupValue: _rValue, 
          onChanged: (Value){
             setState(() {
              _rValue = Value!;
            });
          },
          title: Text('iOS'),
          subtitle: Text('swift'),
          secondary: Icon(Icons.apple),
          selected: _rValue == 2?true:false,
          ),
         RadioListTile(
          value: 3, 
          groupValue: _rValue, 
          onChanged: (Value){
             setState(() {
              _rValue = Value!;
            });
          },
          title: Text('Adroid'),
          subtitle: Text('java,C++'),
          secondary: Icon(Icons.android),
          selected: _rValue == 3?true:false,
          ),
        ]),
      ),
    );
  }
}