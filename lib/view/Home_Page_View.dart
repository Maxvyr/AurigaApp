import 'package:auriga/controller/Colors.dart';
import 'package:auriga/view/GreyfooxTV_Page.dart';
import 'package:auriga/view/KelryTV_Page.dart';
import 'package:auriga/view/NirusanTV_Page.dart';
import 'package:auriga/view/ReyexTV_Page.dart';
import 'package:auriga/widget/Card_BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_Page.dart';

class PageViewAurigaTV extends StatefulWidget {
  PageViewAurigaTV({Key key}) : super(key: key);

  _PageViewAurigaTVState createState() => _PageViewAurigaTVState();
}

class _PageViewAurigaTVState extends State<PageViewAurigaTV>
    with SingleTickerProviderStateMixin {
  // local var
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // local context var
    dynamic size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        // height: size.height,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [white, green],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: TabBarView(
          controller: tabController,
          children: [
            HomePage(),
            GreyFoxxTVPage(),
            NirusanTVPage(),
            KelrysTVPage(),
            ReyexTVPage(),
          ],
        ),
      ),
      bottomNavigationBar: CardBottomBar(tabController: tabController),
    );
  }
}
