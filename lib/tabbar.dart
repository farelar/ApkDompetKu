import 'package:apk_keuangan/hal_komputer.dart';
import 'package:flutter/material.dart';
import 'package:apk_keuangan/hal_komputer.dart' as komputer;
import 'package:apk_keuangan/hal_radio.dart' as radio;
import 'package:apk_keuangan/hal_headshet.dart' as headshet;
import 'package:apk_keuangan/hal_phone.dart' as phone;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Transkasi"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.computer), text: "Komputer",),
            Tab(icon: Icon(Icons.headset), text: "Headshet",),
            Tab(icon: Icon(Icons.radio), text: "Radio",),
            Tab(icon: Icon(Icons.smartphone),text: "Phone",),
          ],
        ),
      ),

      body: TabBarView(
        controller: controller,
        children:<Widget>[
          komputer.Computer(),
          headshet.Headshet(),
          radio.Radio(),
          phone.Phone(),
        ],
      ),

      bottomNavigationBar: Material(
        color: Colors.amber,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.computer), ),
            Tab(icon: Icon(Icons.headset),),
            Tab(icon: Icon(Icons.radio),),
            Tab(icon: Icon(Icons.smartphone),),
          ],
        ),
      ),
    );
  }
}
