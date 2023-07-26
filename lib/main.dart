import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/stateless_widget.dart';
import 'pages/statefull_widget.dart';
void main(){
  FlutterError.onError = (details){
    FlutterError.presentError(details);
    if(kReleaseMode) exit(1);
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateless Widget',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: const MyHomePage2(),
      routes: {
        "/" : (context) => MyHomePage(),
        "/page2":(context) => MyHomePage2(),

      },
     
    );
  }
}



