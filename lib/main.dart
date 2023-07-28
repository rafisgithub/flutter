import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(title: 'All about Stack Tutorial'),
      // routes: ,
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: content(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget content() {
    if (_index == 0) {
      return Screen1();
    } else if (_index == 1) {
      return Screen2();
    } else if (_index == 2) {
      return CustomListview();
    } else {
      return Container();
    }
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // alignment: Alignment.centerRight,

        children: [
          Container(
            height: 150,
            width: 150,
            color: Color.fromARGB(255, 142, 78, 99),
          ),
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 38, 101, 40),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 50,
              width: 50,
              color: Color.fromARGB(255, 38, 101, 40),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 500,
            height: 500,
            color: Color.fromARGB(255, 172, 96, 121),
          ),
          Container(
            width: 400,
            height: 400,
            color: Color.fromARGB(255, 40, 12, 162),
          ),
          Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(255, 22, 216, 61),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.grey,
          ),
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 237, 152, 6),
          ),
        ],
      ),
    );
  }
}

class CustomListview extends StatefulWidget {
  const CustomListview({super.key});

  @override
  State<CustomListview> createState() => _CustomListviewState();
}

class _CustomListviewState extends State<CustomListview> {
   List<int> items = List.generate(10, (index) => ++index);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${items[index]} Man - ${items[index]}'),
          trailing: Icon(Icons.balance),
        );
      },
      
    );
  }
}