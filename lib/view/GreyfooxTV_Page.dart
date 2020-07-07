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
      appBar: AppBarAuriga(titleText: "Auriga TV"),
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
            ],
          ),
        ),
      ),
    );
  }
}
