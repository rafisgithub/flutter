import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "ListView & listTile Widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("all about ListView and ListTile"),),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Item 1"),
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 121, 241, 121)
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 2"),
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 175, 76, 92)
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 3"),
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 226, 130, 12)
            ),
          ),
          
          trailing: Icon(Icons.arrow_forward),
        )
      ],
    );
  }
}