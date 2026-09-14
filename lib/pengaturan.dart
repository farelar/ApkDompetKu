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
            IconButton(
              icon: Icon(Icons.next_plan, size: 90.0),
              onPressed: () {
                Navigator.pushNamed(context, "/AdvanceSettings");
              },
            ),
            Text(
              "Pengaturan",
              style: TextStyle(
                fontSize: 30.0,
                color: const Color.fromARGB(255, 150, 147, 146),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdvancePengaturan extends StatelessWidget {
  const AdvancePengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advance Settings",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        iconTheme: IconThemeData(
          color: Colors.white, // Mengubah warna panah kembali menjadi putih
        ),
      ),
    );
  }
}
