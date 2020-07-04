import 'package:flutter/material.dart';
import 'view/HomePage.dart';
import 'controller/Colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auriga TV app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: green,
      ),
      home: MyHomePage(title: 'Auriga TV'),
    );
  }
}
