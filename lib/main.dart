import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
//  late TabController _tabController;
  @override
  void initState() {
    // _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Basics',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('AppBar widget'),
            centerTitle: true,
            elevation: 30.0,
            shadowColor: Colors.black,
            toolbarOpacity: 0.9,
            // toolbarHeight: 100,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.favorite),
            IconButton(
              onPressed: (){
                print("search");
              },
              icon: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            // controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.person),
                text: 'Person',
              ),
              Tab(
                icon: Icon(Icons.card_travel),
                text: 'Travel',
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: 'Shooping Card',
              ),
            
            ],
          ),
          ),
      
      
          body: TabBarView(
            // controller: _tabController,
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
            
            
            bottomNavigationBar: Material(
              color: Colors.green,
              child: TabBar(
                
                // controller: _tabController,
                labelColor: Colors.red,
                unselectedLabelColor:Colors.white,
                tabs: [
                  Tab(
                  icon: Icon(Icons.person),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(Icons.card_travel),
                  text: 'Travel',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                  text: 'Shooping Card',
                ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}