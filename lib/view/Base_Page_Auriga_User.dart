import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/Colors.dart';
import '../controller/Function_Launch_Web.dart';
import '../widget/AppBar_Auriga.dart';
import '../widget/Container_Background.dart';
import '../widget/RaisedButton_Launch.dart';
import '../widget/Drawer_Auriga.dart';
import 'package:flutter/material.dart';
//import 'dart:math';

// ignore: must_be_immutable
class BasePageAurigaUser extends StatefulWidget {
  String logo;
  String title;
  String content;
  String twitchLink;
  String txtTwitchLink;
  Color color;
  String twitterLink;

  BasePageAurigaUser({
    @required logo,
    @required title,
    @required content,
    @required twitchLink,
    @required txtTwitchLink,
    @required color,
    twitterLink,
  }) {
    this.logo = logo;
    this.title = title;
    this.content = content;
    this.twitchLink = twitchLink;
    this.txtTwitchLink = txtTwitchLink;
    this.color = color;
    this.twitterLink = twitterLink;
  }

  @override
  _BasePageAurigaUserState createState() => _BasePageAurigaUserState();
}

class _BasePageAurigaUserState extends State<BasePageAurigaUser> {
  @override
  Widget build(BuildContext context) {
//    variable
    var heightTotal = MediaQuery.of(context).size.height;
    var widthTotal = MediaQuery.of(context).size.width;
//    var randomNumber = Random().nextInt(365);

    return Scaffold(
      appBar: AppBarAuriga(
        titleText: this.widget.title,
        color: this.widget.color,
      ),
      drawer: DrawerAuriga(context: context, color1: this.widget.color),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: SingleChildScrollView(
            child: FractionallySizedBox(
              widthFactor: 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: heightTotal * 0.02),

                  Transform.rotate(
                    angle: 0,
//                    angle: randomNumber.toDouble(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        this.widget.logo,
                        fit: BoxFit.fill,
                        width: widthTotal * 0.5,
                        height: heightTotal * 0.3,
                      ),
                    ),
                  ),
                  SizedBox(height: heightTotal * 0.02),
                  Text(
                    this.widget.content,
                    style: GoogleFonts.mina(
                      color: black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(height: heightTotal * 0.02),
                  // GreyfoxxTV Button
                  RaisedButtonLaunch(
                    function: () => setState(() {
//                      launchInWebViewWithJavaScript(this.widget.twitchLink);
                      launchInBrowser(this.widget.twitchLink);
                    }),
                    txt: this.widget.txtTwitchLink,
                    color: this.widget.color,
                  ),
                  SizedBox(height: heightTotal * 0.02),
                  RaisedButtonLaunch(
                    function: () => setState(() {
                      launchInBrowser(this.widget.twitterLink);
                    }),
                    txt: "Twitter",
                    color:
                        (this.widget.color != null) ? this.widget.color : grey,
                  ),
                  SizedBox(height: heightTotal * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
