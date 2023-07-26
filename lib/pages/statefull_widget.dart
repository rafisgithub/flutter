import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('StateFull widget',style: TextStyle(fontSize: 22),))),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(txt: 'Change',),
                SizedBox(height: 12,),
                CustomButton(txt: 'Edit',),
                SizedBox(height: 12,),
                CustomButton(txt: 'Update',),
                SizedBox(height: 12,),
                CustomButton(txt: 'Delete',),
                SizedBox(height: 12,),
              
              ],
            ),
          ),
        ),
    );
    
  }
}

class CustomButton extends StatefulWidget {
  final String txt;
  const CustomButton({required this.txt,Key?key}):super(key: key);
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
    String dynamic_txt = "";
    @override 
  void initState() {
    dynamic_txt = "Welcome to the StateFull widget.";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(dynamic_txt,style: TextStyle(fontSize: 20),),
        InkWell(
          onTap: (){
            print('Ontaped');
            setState(() {
              dynamic_txt = "Hello StateFull";
            });
          },
          child: Container(
             height: 60,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.pink,
            ),
            child: Center(child: Text('${widget.txt}',style: TextStyle(fontSize: 18),)),
          ),
        ),
      ],
    );
  }
}