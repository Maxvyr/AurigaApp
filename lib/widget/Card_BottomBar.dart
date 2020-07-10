import 'package:auriga/controller/Colors.dart';
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
                  Tab(
                    child: Icon(Icons.contacts),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                      link:
                          "https://static-cdn.jtvnw.net/jtv_user_pictures/572e1969-46e8-4eb7-a94e-4f665ff954ee-profile_image-70x70.png",
                      title: "GreyfoxxTV",
                    ),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link:
                            "https://static-cdn.jtvnw.net/jtv_user_pictures/87e05c2e-5e43-4d26-a045-e8f89e273172-profile_image-70x70.png",
                        title: "Nirusan"),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link:
                            "https://static-cdn.jtvnw.net/jtv_user_pictures/d8e1b9b6-82da-47a7-ab45-cfb01d14da07-profile_image-70x70.png",
                        title: "KelrysTV"),
                  ),
                  Tab(
                    child: columnBottomBarAuriga(
                        link:
                            "https://static-cdn.jtvnw.net/jtv_user_pictures/71907dc5-31ee-4ce2-b05d-dbf7b99bd35d-profile_image-70x70.png",
                        title: "ReyexTV"),
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
