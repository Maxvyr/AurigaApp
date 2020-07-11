import '../controller/Colors.dart';
import '../controller/Constant.dart';
import '../controller/Function_Launch_Web.dart';
import '../widget/AppBar_Auriga.dart';
import '../widget/Container_Background.dart';
import '../widget/RaisedButton_Launch.dart';
import 'package:flutter/material.dart';

class NirusanTVPage extends StatefulWidget {
  @override
  _NirusanTVPageState createState() => _NirusanTVPageState();
}

class _NirusanTVPageState extends State<NirusanTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuriga(
        linkImg: nirusanLogo,
        titleText: "Nirusan TV",
        color: red,
      ),
      body: ContainerBackground(
        context: context,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Nirusan Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  launched = launchInWebViewWithJavaScript(nirusanLinkTwitch);
                }),
                txt: "Go to Nirusan Live",
                color: red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
