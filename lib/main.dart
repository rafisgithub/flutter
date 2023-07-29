import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Slider Widget',
    theme: ThemeData(primaryColor: Colors.pink),
    home: Scaffold(
      appBar: AppBar(title: Text('Switch Widget')),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(193, 202, 3, 237)),
        ),
        child: Switch(
          value: _value,
          onChanged: (value){
            setState(() {
              _value = value;
            });
          },
          activeColor: Colors.pink,
          inactiveThumbColor: Colors.black,
          activeTrackColor: Colors.pink,
          inactiveTrackColor: Colors.grey,
        ),
      ),
    );
  }
}
