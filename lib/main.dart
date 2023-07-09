import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Icon",
    home: Scaffold(
      appBar: AppBar(title: Text("This is about the Icon widget")),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int volume = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        child: Column(
          children: [
            Icon(
              Icons.volume_up,
              size: 50,
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () {
                print('on pressed');
               setState(() {
                  volume += 1;
               });
              },
            ),
            Text('$volume'),
          ],
        ),
      ),
    );
  }
}
