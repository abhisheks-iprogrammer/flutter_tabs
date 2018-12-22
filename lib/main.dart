import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      theme: new ThemeData(
        primarySwatch: Colors.lightBlue),
      home: new HomePage(),

      );
  }
}
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
           appBar: AppBar(
             bottom: TabBar(
             tabs: [

               Tab(icon: Icon(Icons.directions_car)),
               Tab(icon: Icon(Icons.directions_railway)),
               Tab(icon: Icon(Icons.directions_bike)),
             ],
           ),

           title: Text("Tabs Tutorial"),
           ),
           body: TabBarView(
              children: [
               Icon(Icons.directions_car),
               Icon(Icons.directions_railway),
                Icon(Icons.directions_bike),
              ],
           ),
           ),
        ),
      );
    
  }
}
  