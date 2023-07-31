import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Method Widget'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            Text('Login Page',style: TextStyle(fontSize: 22,color: Colors.pink,fontStyle:FontStyle.italic),),
            SizedBox(height: 20,),
            loinForm(),
          ]
          ),
        ),
      ),
    );
  }
  //Create metthod widget

  Widget loinForm(){
    return Container(
      // height: 250,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(17),
        // border: Border.all(color: Colors.pink)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "User Name:",
             labelText: "Enter you user name:",
             hintStyle: TextStyle(color: Colors.white,fontSize: 10),
             labelStyle: TextStyle(color: Colors.white,fontSize: 20),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
             prefixIcon: Icon(Icons.account_circle)
            ),
          ),
          SizedBox(height: 30,),
           TextFormField(
            decoration: InputDecoration(
              hintText: "Password:",
             labelText: "Enter you password:",
             hintStyle: TextStyle(color: Colors.white,fontSize: 10),
             labelStyle: TextStyle(color: Colors.white,fontSize: 20),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
             prefixIcon: Icon(Icons.security),
            ),
            obscureText: true,
            obscuringCharacter: "#",
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){

            }, 
            child: Text('login')),
            
        ]),
      ),
    );
  }

}