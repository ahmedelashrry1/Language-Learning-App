// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:touke/screens/home_page.dart';

void main() {
  runApp(tokuApp());
}

class tokuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
