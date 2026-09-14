import 'package:flutter/material.dart';

class HalamanParsing extends StatelessWidget {
  const HalamanParsing({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card dan Parsing Data"),
        leading: Icon(Icons.density_small_rounded, color: Colors.white, size: 21.0,),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardKu(
              icon: Icons.home,
              teks: "Home",
              iconColor: const Color.fromARGB(255, 226, 236, 36),
            ),
            CardKu(
              icon: Icons.menu,
              teks: "Menu",
              iconColor: const Color.fromARGB(255, 24, 219, 34),
            ),
            CardKu(
              icon: Icons.graphic_eq,
              teks: "Graph",
              iconColor: const Color.fromARGB(255, 11, 64, 210),
            ),
          ],
        ),
      ),
    );
  }
}

class CardKu extends StatelessWidget {
  const CardKu({
    super.key,
    required this.icon,
    required this.teks,
    required this.iconColor,
  });

  final IconData icon;
  final String teks;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Card(
        elevation: 3.0,
        child: Column(
          children: <Widget>[
            Icon(icon, size: 90.0, color: iconColor),
            Text(
              teks,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.red,
                fontFamily: "Arial",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
