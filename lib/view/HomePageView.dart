import 'package:auriga/main.dart';

import '../controller/Variables.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class PageViewAurigaTV extends StatefulWidget {
  PageViewAurigaTV({Key key}) : super(key: key);

  _PageViewAurigaTVState createState() => _PageViewAurigaTVState();
}

class _PageViewAurigaTVState extends State<PageViewAurigaTV> {
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        dragStartBehavior: DragStartBehavior.start,
        children: [
          MyHomePage(),
        ],
      ),
    );
  }
}
