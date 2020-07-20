import '../controller/Colors.dart';
import '../view/GreyfooxTV_Page.dart';
import '../view/KelryTV_Page.dart';
import '../view/NirusanTV_Page.dart';
import '../view/ReyexTV_Page.dart';
import '../widget/Card_BottomBar.dart';
import 'package:flutter/material.dart';

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
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // local context var

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
            // HomePage(),
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
