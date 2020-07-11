import 'package:auriga/widget/Container_Background.dart';
import 'package:flutter/material.dart';

import '../controller/Colors.dart';
import '../widget/RaisedButton_Launch.dart';
import '../widget/AppBar_Auriga.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarAuriga(titleText: "Auriga TV"),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Discord Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  launched = launchInBrowser(discordAurigaLink);
                }),
                txt: "Discord",
                color: purple,
              ),

              // Youtube Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  launched = launchInBrowser(youtubeLink);
                }),
                txt: "Youtube",
                color: red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
