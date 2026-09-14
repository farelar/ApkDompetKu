import 'package:apk_keuangan/pengaturan.dart';
import 'package:flutter/material.dart';
import 'package:apk_keuangan/appbar.dart';
import 'package:apk_keuangan/card_parsing.dart';
import 'package:apk_keuangan/DompetKu.dart';
import 'package:apk_keuangan/navigation_route.dart';
import 'package:apk_keuangan/tabbar.dart';
import 'package:apk_keuangan/listview.dart';
import 'package:apk_keuangan/listviewjson.dart';
void main() {
  runApp(
    MaterialApp(
      home:  Listviewjson(data: List<String>.generate(100, (i) => "ini data ke $i"),),
      title: "navigasi",  
      routes: <String, WidgetBuilder>{
        '/Navigation': (BuildContext context)=> navigation(),
        '/Navigation2': (BuildContext context)=> navigation2(),
        '/AdvanceSettings':(context) => AdvancePengaturan(),
      },
    )
  );
}

