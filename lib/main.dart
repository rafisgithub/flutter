import 'package:flutter/material.dart';

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('All about Appbar'),
          centerTitle: true,
          elevation: 30,
          shadowColor: Colors.blue,
          toolbarOpacity: 1,
          toolbarHeight: 62,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.favorite),
            IconButton(
              onPressed: () {
                print("search");
              },
              icon: Icon(Icons.search),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'Person',
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: 'shopping_cart',
              ),
              Tab(
                icon: Icon(Icons.card_travel),
                text: 'card_travel',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text('Person')),
            Center(child: Text("Travel")),
            Center(child: Text("Shopping")),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

void main() {
  runApp(MyApp());
}
