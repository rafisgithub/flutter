import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "GridView Exampla",
    home: Scaffold(
      appBar: AppBar(title: Text("All about GridView")),
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
    for(int i =0;i<=50;i++){
      list.add(i);
    }
    super.initState();
  }
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext cxt, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color.fromARGB(255, 13, 134, 17),
            alignment: Alignment.center,
            child: Text('${list[index]}'),
          ),
        );
      },
    );
      
  }
}