import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "ListView & listTile Widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("ListView.builder"),),
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
  List<int> list = [];
  @override
  void initState(){
    for(int i=0;i<=50;i++){
      list.add(i);
    }
    super.initState();
  }
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext cnx, int index){
        return ListTile(
          title: Text("Item no ${list[index]}"),
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(shape: BoxShape.circle,color: const Color.fromARGB(255, 185, 88, 923)),
          ),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    );
  }
}