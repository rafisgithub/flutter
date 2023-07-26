import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView.builder Example')),
        body: ListViewBuilderExample(),
      ),
    );
  }
}

class ListViewBuilderExample extends StatelessWidget {
  // const ListViewBuilderExample({super.key});
  List<int> list = List.generate(10, (index) => ++index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text('Item ${list[index]}'),
          trailing: Icon(Icons.delete),
          leading: Icon(Icons.production_quantity_limits),
        );

      },
    );
  }
}
