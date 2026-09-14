import 'package:flutter/material.dart';

import './transaksi.dart' as transkasi;
import './dompet.dart' as dompet;
import './pengaturan.dart' as pengaturan;
import './laporan.dart' as laporan;

class Dompetku extends StatefulWidget {
  const new({super.key});

  @override
  State<Dompetku> createState() => _DompetkuState();
}

class _DompetkuState extends State<Dompetku>
    with SingleTickerProviderStateMixin {
  late TabController controllernyatab;

  @override
  void initState() {
    // TODO: implement initState
    controllernyatab = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controllernyatab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Dompetku",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),

      body: TabBarView(
        controller: controllernyatab,
        children: <Widget>[
          transkasi.Transaksi(),
          dompet.Dompet(),
          laporan.Laporan(),
          pengaturan.Pengaturan(),
        ],
      ),

      bottomNavigationBar: Material(
        color: const Color.fromARGB(255, 252, 254, 255),
        child: TabBar(
          dividerColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          controller: controllernyatab,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.book),
              child: Text("Transaksi", style: TextStyle(fontSize: 10.0)),
            ),
            Tab(
              icon: Icon(Icons.wallet),
              child: Text("Dompet", style: TextStyle(fontSize: 10.0)),
            ),
            Tab(
              icon: Icon(Icons.report),
              child: Text("Laporan", style: TextStyle(fontSize: 10.0)),
            ),
            Tab(
              icon: Icon(Icons.settings),
              child: Text("Pengaturan", style: TextStyle(fontSize: 10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
