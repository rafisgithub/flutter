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
  var _slvalue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(193, 202, 3, 237)),
        ),
        child: SwitchListTile(
          value: _slvalue,
          onChanged: (value){
            setState(() {
              _slvalue = value;
            });
          },
          activeColor: Colors.pink,
          activeTrackColor: Colors.yellow,
          inactiveTrackColor: Colors.black,
        
          title: Text("Switch"),
          secondary: Icon(Icons.switch_access_shortcut),
          selected: _slvalue,
        ),
      ),
    );
  }
}
