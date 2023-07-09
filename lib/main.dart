import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    title: "TextField",
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text("All about TextField")),
      backgroundColor: Color.fromARGB(255, 93, 76, 76),
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
  String  txt = '';
  bool _secure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(Icons.account_circle),
              suffix: IconButton(
                icon:Icon(_secure?Icons.remove_red_eye:Icons.security),
                onPressed: () {
                  setState(() {
                    _secure = !_secure;
                  });
                },
                ),
              errorText: txt.isEmpty?'Text field is empty':null
            ),
            keyboardType: TextInputType.text,
            obscureText: _secure,
            obscuringCharacter: '*',
            maxLength: 10,
            // maxLines: 2,
            onChanged: (value) {
              txt = value;
            },
            onSubmitted: (value){
              setState(() {
                txt = value;
              });
              print(value);
            },
          )
        ],
      ),
    );
  }
}