import 'package:flutter/material.dart';

class MyStatsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return MyStatsPageState();
  }

}

class MyStatsPageState extends State<MyStatsPage>{
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(25.0),
      child:Text('MyStats', style:TextStyle(fontSize: 36.0))
    );
  }

}