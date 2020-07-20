import '../controller/Colors.dart';
import 'Base_Page_Auriga_User.dart';
import '../controller/Constant.dart';
import 'package:flutter/material.dart';

class GreyFoxxTVPage extends StatefulWidget {
  @override
  _GreyFoxxTVPageState createState() => _GreyFoxxTVPageState();
}

class _GreyFoxxTVPageState extends State<GreyFoxxTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return BasePageAurigaUser(
      logo: greyfoxxLogo,
      title: "GreyFoxxTv",
      twitchLink: greyfoxLinkTwitch,
      txtTwitchLink: "Go to GreyFoxx TV",
      color: blue,
      twitterLink: greyfoxLinkTwitter,
    );
  }
}
