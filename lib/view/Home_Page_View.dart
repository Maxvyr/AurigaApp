import 'package:auriga/view/GreyfooxTV_Page.dart';
import 'package:auriga/view/KelryTV_Page.dart';
import 'package:auriga/view/NirusanTV_Page.dart';
import 'package:auriga/view/ReyexTV_Page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../controller/Variables.dart';
import 'Home_Page.dart';

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
          HomePage(),
          GreyFoxxTVPage(),
          NirusanTVPage(),
          KelrysTVPage(),
          ReyexTVPage(),
        ],
      ),
    );
  }
}
