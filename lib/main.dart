import 'package:flutter/material.dart';
import 'WhatsAppHome.dart';

main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatApp',
      theme: new ThemeData(
        primaryColor: new Color(0XFF075E54),
        accentColor: new Color(0XFF25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}
