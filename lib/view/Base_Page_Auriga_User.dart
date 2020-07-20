import '../controller/Colors.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';
import '../widget/AppBar_Auriga.dart';
import '../widget/Container_Background.dart';
import '../widget/RaisedButton_Launch.dart';
import '../widget/end_Drawer_Auriga.dart';
import 'package:flutter/material.dart';

class BasePageAurigaUser extends StatefulWidget {
  String logo;
  String title;
  String twitchLink;
  String txtTwitchLink;
  Color color;
  String twitterLink;

  BasePageAurigaUser({
    @required logo,
    @required title,
    @required twitchLink,
    @required txtTwitchLink,
    @required color,
    twitterLink,
  }) {
    this.logo = logo;
    this.title = title;
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
    return Scaffold(
      appBar: AppBarAuriga(
        linkImg: this.widget.logo,
        titleText: this.widget.title,
        color: this.widget.color,
      ),
      endDrawer: EndDrawerAuriga(context: context),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // GreyfoxxTV Button
                RaisedButtonLaunch(
                  function: () => setState(() {
                    launchInWebViewWithJavaScript(this.widget.twitchLink);
                  }),
                  txt: this.widget.txtTwitchLink,
                  color: this.widget.color,
                ),
                SizedBox(height: 10.0),
                RaisedButtonLaunch(
                  function: () => setState(() {
                    launchInBrowser(this.widget.twitterLink);
                  }),
                  txt: "Twitter",
                  color: this.widget.color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
