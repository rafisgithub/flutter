// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/page1.dart';

void main() {
  runApp(MaterialApp(
    title: 'flutter Basics',
    theme: ThemeData(primaryColor: Colors.pink),
    home: Scaffold(
      appBar: AppBar(title: Text('Drawer Widget')),
      // body: ,
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Rafi Ahmed'), 
              accountEmail: Text('smrafi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('X'),
              ),
              decoration: BoxDecoration(
                color: Colors.pink
              ),
              otherAccountsPictures: [
                CircleAvatar(child: Text('Y'),),
                CircleAvatar(child: Text('Y'),),
              ],
              ),
            ListTile(
              title: Text('page-01'),
              trailing: Icon(Icons.arrow_forward),
          
              
            ),
            ListTile(

              title: Text('page-01'),
              trailing: Icon(Icons.arrow_forward),
              
            ),
            ListTile(
              title: Text('page-01'),
              trailing: Icon(Icons.arrow_forward),
              
            ),
          ],
        ),
      ),
    ),
  ));
}
