import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "first app",
      home: Scaffold(
        body: MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CustomButton("Create"),
            SizedBox(
              height: 10,
              ),
             CustomButton("Read"),
             SizedBox(
              height: 10,
             ),
              CustomButton("update"),
              SizedBox(
                height: 10,
              ),
               CustomButton("delete"),
          ],)
        );
    
  }
}


class CustomButton extends StatelessWidget {
  final String title;
  CustomButton(this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("onTap");
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
    
  }
