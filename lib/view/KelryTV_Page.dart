import '../controller/Colors.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';
import '../widget/AppBar_Auriga.dart';
import '../widget/Container_Background.dart';
import '../widget/RaisedButton_Launch.dart';
import 'package:flutter/material.dart';

class KelrysTVPage extends StatefulWidget {
  @override
  _KelrysTVPageState createState() => _KelrysTVPageState();
}

class _KelrysTVPageState extends State<KelrysTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuriga(
        linkImg: kelrysLogo,
        titleText: "Kelrys TV",
        color: yellow,
      ),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // KelrysTV Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  launched = launchInWebViewWithJavaScript(kelrysTVLinkTwitch);
                }),
                txt: "Go to KelrysTV Live",
                color: yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
