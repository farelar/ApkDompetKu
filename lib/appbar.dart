import 'package:flutter/material.dart';

class Halamansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.white),
        backgroundColor: Colors.blue[700],
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Arial',
        ),
        title: new Center(child: Text('Sepran')),
        actions: <Widget>[Icon(Icons.search, color: Colors.white)],
      ),
      body: Container(
        
        color: Colors.blue[100],
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.local_pizza,
              size: 90.0,
              color: const Color.fromARGB(255, 205, 71, 71),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.alarm, size:  90.0,color: Colors.red,),
                Icon(Icons.alarm, size:  90.0,color: Colors.red,),
                Icon(Icons.alarm, size:  90.0,color: Colors.red,),
              ],

            ),
            Icon(Icons.people, size: 90.0, color: const Color.fromARGB(255, 205, 71, 71)),
          ],
        ),
      ),
    );
  }
}
