import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Slider Widget',
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
              title: Text('menu-01'),
              trailing: Icon(Icons.arrow_back),
              
            ),
            ListTile(
              title: Text('menu-01'),
              trailing: Icon(Icons.arrow_back),
              
            ),
            ListTile(
              title: Text('menu-01'),
              trailing: Icon(Icons.arrow_back),
              
            ),
          ],
        ),
      ),
    ),
  ));
}
