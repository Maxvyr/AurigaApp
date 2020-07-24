import '../controller/Colors.dart';
import '../controller/Constant.dart';
import 'package:flutter/material.dart';
import 'Base_Page_Auriga_User.dart';

class ReyexTVPage extends StatefulWidget {
  @override
  _ReyexTVPageState createState() => _ReyexTVPageState();
}

class _ReyexTVPageState extends State<ReyexTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return BasePageAurigaUser(
      logo: reyexLogo,
      title: "ReyexTv",
      content: "",
      twitchLink: reyexTVLinkTwitch,
      txtTwitchLink: "Go to Reyex TV",
      color: green,
      twitterLink: reyexTVLinkTwitter,
    );
  }
}
