import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/Colors.dart';
import '../widget/RaisedButton_Launch.dart';
import '../widget/AppBar_Auriga.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // variable diff button
    const String nirusanLinkTwitch = 'https://www.twitch.tv/nirusan';
    const String greyfoxLinkTwitch = 'https://www.twitch.tv/greyfoxxtv';
    const String kelrysTVLinkTwitch = 'https://www.twitch.tv/kelrystv';
    const String reyexTVLinkTwitch = 'https://www.twitch.tv/reyextv';
    const String discordLink = 'https://discord.gg/BaAQpWH';
    const String youtubeLink =
        'https://www.youtube.com/channel/UCcdtBUQj-Rcm7LjXc9PMeDg';

    return Scaffold(
      appBar: AppBarAuriga(titleTex: "Auriga TV"),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              white,
              grey.withOpacity(0.5),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // GreyfoxxTV Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  _launchInWebViewWithJavaScript(greyfoxLinkTwitch);
                }),
                txt: "Go to GreyfoxxTV live",
                color: blue,
              ),

              // Nirusan Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  _launched = _launchInWebViewWithJavaScript(nirusanLinkTwitch);
                }),
                txt: "Go to Nirusan Live",
                color: red,
              ),

              // KelrysTV Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  _launched =
                      _launchInWebViewWithJavaScript(kelrysTVLinkTwitch);
                }),
                txt: "Go to KelrysTV Live",
                color: yellow,
              ),

              // ReyexTv Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  _launched = _launchInWebViewWithJavaScript(reyexTVLinkTwitch);
                }),
                txt: "Go to ReyexTV Live",
                color: green,
              ),

              // Discord Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  _launched = _launchInBrowser(discordLink);
                }),
                txt: "Discord",
                color: purple,
              ),

              // Youtube Button
              RaisedButtonLaunch(
                function: () => setState(() {
                  _launched = _launchInBrowser(youtubeLink);
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
