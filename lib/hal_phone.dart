import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0)),
            Text("Phone", style: TextStyle(fontSize: 30.0)),
            Padding(padding: EdgeInsets.all(20.0)),
            new Icon(Icons.phone, size: 90.0),
          ],
        ),
      ),
    );
  }
}
