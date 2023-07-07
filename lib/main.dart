import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Card",
    home: Scaffold(
      appBar: AppBar(
        title: Text("All about Card widget"),
        ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blue,
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: Colors.red,
          width: 3)
        ),
      
       child: Container(
        height: 300,
        width: 300,
 
       ),
   
    );
  }
}