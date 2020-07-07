import 'view/Home_Page_View.dart';
import 'package:flutter/material.dart';
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
      home: PageViewAurigaTV(),
      // home: MyHomePage(title: 'Auriga TV'),
    );
  }
}
