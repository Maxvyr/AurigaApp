import '../controller/Colors.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//var local
double iconSizeButton = 80.0;

class DrawerAuriga extends Drawer {
  DrawerAuriga({@required BuildContext context, @required Color color1})
      : super(
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color1,
                      white,
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "Auriga TV",
                  style: GoogleFonts.mina(
                    color: black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                child: IconButton(
                    iconSize: iconSizeButton,
                    icon: Image.network("https://i.imgur.com/K8H0qxX.png"),
                    onPressed: () {
                      launchInBrowser(discordAurigaLink);
                    }),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                child: IconButton(
                    iconSize: iconSizeButton,
                    icon: Image.network("https://i.imgur.com/ouXb28u.png"),
                    onPressed: () {
                      launchInBrowser(youtubeLink);
                    }),
              ),
            ],
          ),
        );
}
