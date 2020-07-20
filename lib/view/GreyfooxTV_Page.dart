import 'package:google_fonts/google_fonts.dart';

import '../controller/Colors.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';
import '../widget/AppBar_Auriga.dart';
import '../widget/Container_Background.dart';
import '../widget/RaisedButton_Launch.dart';
import 'package:flutter/material.dart';

class GreyFoxxTVPage extends StatefulWidget {
  @override
  _GreyFoxxTVPageState createState() => _GreyFoxxTVPageState();
}

class _GreyFoxxTVPageState extends State<GreyFoxxTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuriga(
        linkImg: greyfoxxLogo,
        titleText: "GreyFoxx TV",
        color: blue,
      ),
      endDrawer: Drawer(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    blue,
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
                  icon: Image.network("https://i.imgur.com/K8H0qxX.png"),
                  onPressed: null),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: IconButton(
                  icon: Image.network("https://i.imgur.com/ouXb28u.png"),
                  onPressed: null),
            ),
          ],
        ),
      ),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // GreyfoxxTV Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  launchInWebViewWithJavaScript(greyfoxLinkTwitch);
                }),
                txt: "Go to GreyfoxxTV live",
                color: blue,
              ),
              RaisedButtonLaunch(
                function: () => setState(() {
                  launchInBrowser(greyfoxLinkTwitter);
                }),
                txt: "Twitter",
                color: blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
