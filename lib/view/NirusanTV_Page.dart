import '../controller/Colors.dart';
import '../controller/Constant.dart';
import 'package:flutter/material.dart';
import 'Base_Page_Auriga_User.dart';

class NirusanTVPage extends StatefulWidget {
  @override
  _NirusanTVPageState createState() => _NirusanTVPageState();
}

class _NirusanTVPageState extends State<NirusanTVPage> {
  Future<void> launched;

  @override
  Widget build(BuildContext context) {
    return BasePageAurigaUser(
      logo: nirusanLogo,
      title: "Nirusan",
      twitchLink: nirusanLinkTwitch,
      txtTwitchLink: "Go to Niruan TV",
      color: red,
      twitterLink: nirusanLinkTwitter,
    );
  }
}
