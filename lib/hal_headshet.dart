import 'package:flutter/material.dart';

class Headshet extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0)),
            Text("Headshet", style: TextStyle(fontSize: 30.0)),
            Padding(padding: EdgeInsets.all(20.0)),
            Image.asset("img/headshet.jpg", width: 300.0, ),
          ],
        ),
      ),
    );
  }
}
