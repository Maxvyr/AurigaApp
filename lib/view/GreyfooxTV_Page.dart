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
      content: "Salut ! Je stream de façon régulière (3/4 stream par semaine) avec mes amis dans la joie, la bonne humeur et on rigole bien :)",
      twitchLink: greyfoxLinkTwitch,
      txtTwitchLink: "Go to GreyFoxx TV",
      color: blue,
      twitterLink: greyfoxLinkTwitter,
    );
  }
}
