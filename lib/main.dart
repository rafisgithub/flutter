import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
     
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Stateless widget',style: TextStyle(fontSize: 22),))),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Custombutton('Add'),
              SizedBox(height: 15,),
              Custombutton('Edit'),
              SizedBox(height: 15,),
              Custombutton('Update'),
              SizedBox(height: 15,),
              Custombutton('Delete'),
              SizedBox(height: 15,),
             
            ]),
          ),
        ),
    );
  }
}

class Custombutton extends StatelessWidget {
  // const Custombutton({super.key});
  final String title;
  Custombutton(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(7),
      ),
     child: Center(child: Text(title,style: TextStyle(fontSize: 18),)),
    );

  }
}