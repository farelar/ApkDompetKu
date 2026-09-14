import 'package:flutter/material.dart';

class navigation extends StatelessWidget {
  const navigation({super.key});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Music")),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.headphones, size: 50.0),
          onPressed: () {
            Navigator.pushNamed(context, '/Navigation2');
          },
        ),
      ),
    );
  }
}

class navigation2 extends StatelessWidget {
  const navigation2({super.key});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Speaker")),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.speaker, size: 50.0, color: Colors.red,),
          onPressed: () {
            Navigator.pushNamed(context, '/Navigation');
          },
        ),
      ),
    );
  }
}
