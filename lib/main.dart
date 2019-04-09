import 'package:flutter/material.dart';
import './pages/Search.dart';
import './pages/Home.dart';
import './pages/MyStats.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }


}

class MyAppState extends State<MyApp>{
  int _selectedRoute = 1;
  final _routes = [
   MyStatsPage(),
   HomePage(),
   SearchPage()
  ];


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Twitter Stats",
      theme: ThemeData(
        
        primaryColor: Colors.lightBlue,
        accentColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Twitter Stats"),
         
          
        ),
         body:_routes[_selectedRoute],
         bottomNavigationBar:BottomNavigationBar(
           currentIndex: _selectedRoute,
           onTap: (int index){
             setState(() {
               _selectedRoute =index;
             });
           },
           items: [
             BottomNavigationBarItem(
               icon: Icon(Icons.person),
               title: Text("MyStats")
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.home),
               title: Text("Home")
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.search),
               title: Text("Search People")
             ),

           ],
         ) ,
      ),
    );
  }
}
