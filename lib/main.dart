import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Slider Widget',
    theme: ThemeData(primaryColor: Colors.pink),
    home: Scaffold(
      appBar: AppBar(title: Text('Slider Widget')),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _sValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
        ),
        child: Column(children: [
          Slider(
            value: _sValue,
            min: 0.0,
            max: 10.0,
            onChanged: (value) {
              print(value);
              setState(() {
                _sValue = value;
              });
            },
            activeColor: Colors.purple,
            inactiveColor: Colors.black38,
            divisions: 10,
            label: 'Range',
          ),
          Text('Range Value : $_sValue')
        ]),
      ),
    );
  }
}
