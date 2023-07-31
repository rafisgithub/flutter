import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/page1.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
    late TabController _tabController;
 @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
        //  leading: Icon(Icons.menu),
         title: Text("All aobut app bar"),
         actions: [
           Icon(Icons.favorite),
           Icon(Icons.search),
           Icon(Icons.more_vert),
         ],
         bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.travel_explore),
            ),
            Tab(
              icon: Icon(Icons.shopping_bag),
            ),
            Tab(
              icon: Icon(Icons.car_crash),
            ),
         ]),
        ),

        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              child: Center(child: Text("Person")),
            ),
            Container(
              child: Center(child: Text("Travel")),
            ),
            Container(
              child: Center(child: Text("Shopping")),
            ),
          ],
        ),
        drawer: Drawer(
          
          backgroundColor: Colors.pink,
          
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Rafi Ahmed"), 
                accountEmail: Text('smrafi@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Text('Rafi'),
                ),
                ),
                
              ListTile(
                title: Text('page-01'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.pages_outlined),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
              },
              ),
             
              ListTile(
                title: Text('page-02'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.pages_outlined),
              ),
             
              ListTile(
                title: Text('page-03'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.pages_outlined),
              ),
             
              ListTile(
                title: Text('page-04'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.pages_outlined),
              ),
             
              ListTile(
                title: Text('page-05'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.pages_outlined),
              ),
             
             
            ],
          ),
        ),
    );
  }
}