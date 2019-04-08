import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return LoginPageState();
  }

}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(25.0),
      child:Text('Login', style:TextStyle(fontSize: 36.0))
    );
  }

}