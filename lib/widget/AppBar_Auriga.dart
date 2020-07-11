import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/Colors.dart';

class AppBarAuriga extends AppBar {
  AppBarAuriga(
      {@required String linkImg,
      @required String titleText,
      @required Color color})
      : super(
          leading: Image.network(linkImg),
          title: Text(
            titleText,
            style: GoogleFonts.mina(
              color: white,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 4.0,
                  color: black,
                ),
              ],
            ),
          ),
          elevation: 15.0,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
          ),
          backgroundColor: color,
          actions: <Widget>[],
        );
}
