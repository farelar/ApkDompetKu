import 'package:flutter/material.dart';

class Listviewjson extends StatelessWidget {
  const Listviewjson({super.key, required this.data});

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("With JSON List View"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        backgroundColor: Colors.lightBlue,
      ),

      body: Container(
        child: ListView.builder(
          itemCount: data?.length?? 0,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.widgets),
              title: Text("${data[index]}"),
            );
          },
        ),
      ),
    );
  }
}
