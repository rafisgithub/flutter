import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.pink,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.black,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.green,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.yellow,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.amber,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.red,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.indigo,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.black87,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.pinkAccent,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Color.fromARGB(255, 9, 230, 38),
          ),
          
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.pink,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.black,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.green,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.yellow,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.amber,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.red,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.indigo,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.black87,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.pinkAccent,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Color.fromARGB(255, 9, 230, 38),
          ),
          
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.pink,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.black,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.green,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.yellow,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.amber,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.red,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.indigo,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.black87,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Colors.pinkAccent,
          ),
          Container(
            child: Center(child: Text("Hey")),
            color: Color.fromARGB(255, 9, 230, 38),
          ),
          
          
        ],
      ),
    );
  }
}