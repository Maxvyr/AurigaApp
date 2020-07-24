import '../controller/Colors.dart';
import '../controller/Constant.dart';
import 'package:flutter/material.dart';

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
                indicatorColor: black,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: grey,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: columnBottomBarAuriga(
                      link: greyfoxxLogo),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link: nirusanLogo),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link: kelrysLogo),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link: reyexLogo),
                  ),
                ],
              ),
            ],
          ),
        );

  static Widget columnBottomBarAuriga({
    @required String link,
  }) {
    return IconButton(
      icon: Image.network(link),
      onPressed: null,
    );
  }
}
