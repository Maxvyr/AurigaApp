import '../controller/Colors.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';
import '../widget/AppBar_Auriga.dart';
import '../widget/Container_Background.dart';
import '../widget/RaisedButton_Launch.dart';
import 'package:flutter/material.dart';

class ReyexTVPage extends StatefulWidget {
  @override
  _ReyexTVPageState createState() => _ReyexTVPageState();
}

class _ReyexTVPageState extends State<ReyexTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuriga(
        linkImg: reyexLogo,
        titleText: "Reyex TV",
        color: green,
      ),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // ReyexTv Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  launched = launchInWebViewWithJavaScript(reyexTVLinkTwitch);
                }),
                txt: "Go to ReyexTV Live",
                color: green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
