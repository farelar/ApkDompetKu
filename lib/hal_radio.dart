import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0)),
            Text("Radio", style: TextStyle(fontSize: 30.0)),
            Padding(padding: EdgeInsets.all(20.0)),
            Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqyGgp3OPYLO65BGaYVkACUkWkSghr7bs9AbeycXjMEw&s=10"), width: 210.0,)
            // new Icon(Icons.radio, size: 90.0),
          ],
        ),
      ),
    );
  }
}
