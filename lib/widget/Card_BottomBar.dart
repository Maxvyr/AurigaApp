import '../controller/Colors.dart';
import '../controller/Constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBottomBar extends Card {
  CardBottomBar({@required TabController tabController})
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TabBar(
                controller: tabController,
                indicatorColor: green,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: green,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  // Tab(
                  //   child: Icon(Icons.contacts),
                  // ),
                  Tab(
                    child: columnBottomBarAuriga(
                      link: greyfoxxLogo,
                      title: "GreyfoxxTV",
                    ),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link: nirusanLogo, title: "Nirusan"),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link: kelrysLogo, title: "KelrysTV"),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link: reyexLogo, title: "ReyexTV"),
                  ),
                ],
              ),
            ],
          ),
        );

  static Widget columnBottomBarAuriga({
    @required String link,
    @required String title,
  }) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Image.network(link),
          onPressed: null,
        ),
        Text(
          title,
          style: GoogleFonts.mina(),
        ),
      ],
    );
  }
}
