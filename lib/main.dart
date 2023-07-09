import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    title: "TextField",
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("All about ButtonWidgets")),
      backgroundColor: Color.fromARGB(255, 242, 235, 235),
      body: MYApp(),
    ),
  ));
}
class MYApp extends StatefulWidget {
  const MYApp({Key? key}) : super(key: key);

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text("Click me"),
            ),
          TextButton(
            onPressed: (){

          }, child: Text('Sign up')
          ),
          OutlinedButton(
            onPressed: (){

            },
            child: Text('Log in'),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                
              },
              label: Text("Account"),
            ),
            IconButton(
              icon: Icon(Icons.security),
              onPressed: () {
                
              },
            ),
            FloatingActionButton(
              onPressed: () {
                
              },
              child: Text('action'),
            )
          ],
        ),
      ),
    );
  }
}

