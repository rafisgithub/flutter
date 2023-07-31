import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page1 extends StatefulWidget {
  //const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('this is drawer')),
    body: PageOneContent(),
    );
  }
}

class PageOneContent extends StatefulWidget {
  //const PageOneContent({super.key});

  @override
  State<PageOneContent> createState() => _PageOneContentState();
}

class _PageOneContentState extends State<PageOneContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page -01'),
    );
  }
}