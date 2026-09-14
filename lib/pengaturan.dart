import 'package:flutter/material.dart';

class Pengaturan extends StatelessWidget {
  const Pengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0)),
            new Icon(Icons.settings, size: 90.0, color: const Color.fromARGB(255, 150, 147, 146),),
            Text("Pengaturan", style: TextStyle(fontSize: 30.0, color: const Color.fromARGB(255, 150, 147, 146))),
          ],
        ),
      ),
    );
  }
}
