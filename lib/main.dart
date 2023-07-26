import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Colum Widget',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      // routes: ,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Row'),
            Text('Row'),
            Text('Row'),
            Text('Row'),
          
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Column"),
                Text("Column"),
                Text("Column"),
                Text("Column"),
              ],
            )
          ],
        ),
        
      ),
    );
  }
}