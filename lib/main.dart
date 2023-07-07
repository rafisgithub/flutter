import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Row and Column Widget',
    home: Scaffold(
      appBar: AppBar(
        title: Text("All about Row and Column widget"),
      ),
      body: MyApp(),
      
    ),
  ));
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("I "),
        Text("am "),
        Text("from "),
        Text("Row"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I "),
            Text("am "),
            Text("from"),
            Text("Column")
          ],
        )
      ],
    );
  }
}