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
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        child: CheckboxListTile(
          value: _cValue,
          onChanged: (value){
           setState(() {
             _cValue = value!;
           });
          },
          title: Text('Title'),
          subtitle: Text("Subtitle"),
          secondary: Icon(Icons.favorite),
          activeColor: Colors.green,
          checkColor: Colors.black38,
          selected: _cValue,
          // controlAffinity: ListTileControlAffinity.platform,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}