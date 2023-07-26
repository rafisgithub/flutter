import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter basics',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      // routes: ,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView and List Tile Widget'),
      ),
      body: PageContent(),
    );
  }
}

class PageContent extends StatefulWidget {
  const PageContent({super.key});

  @override
  State<PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<PageContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Item -01'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -02'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -03'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -04'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -05'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -01'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -02'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -03'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -04'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -05'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -01'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -02'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -03'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -04'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -05'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -01'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -02'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -03'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -04'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -05'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -01'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -02'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -03'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -04'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text('Item -05'),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}