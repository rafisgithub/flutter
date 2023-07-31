import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_basics/pages/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 60,
            width: 160,
            child: ElevatedButton(
    
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, 
              child: Text('Login',style: TextStyle(fontSize: 22),)),
          ),
          SizedBox(height: 30,),
          Container(
            height: 60,
            width: 160,
            child: ElevatedButton(
    
              onPressed: (){

              }, 
              child: Text('sign Up',style: TextStyle(fontSize: 22),)),
          ),
        ]),
      ),
    );
  }
}