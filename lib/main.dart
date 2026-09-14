import 'package:flutter/material.dart';
import 'package:apk_keuangan/appbar.dart';
import 'package:apk_keuangan/card_parsing.dart';
import 'package:apk_keuangan/DompetKu.dart';
import 'package:apk_keuangan/navigation_route.dart';
import 'package:apk_keuangan/tabbar.dart';
void main() {
  runApp(
    MaterialApp(
      home:  Dompetku(),
      title: "navigasi",  
      routes: <String, WidgetBuilder>{
        '/Navigation': (BuildContext context)=> navigation(),
        '/Navigation2': (BuildContext context)=> navigation2(),
      },
    )
  );
}

