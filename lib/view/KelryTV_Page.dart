import '../controller/Colors.dart';
import '../controller/Constant.dart';
import 'package:flutter/material.dart';

import 'Base_Page_Auriga_User.dart';

class KelrysTVPage extends StatefulWidget {
  @override
  _KelrysTVPageState createState() => _KelrysTVPageState();
}

class _KelrysTVPageState extends State<KelrysTVPage> {
  Future<void> launched;



  @override
  Widget build(BuildContext context) {
    return BasePageAurigaUser(
      logo: kelrysLogo,
      title: "KelrysTV",
      content: "Salut je joue principalement avec mes amis et c'est la bonne humeur le plus important de toute façon. Des bisous.",
      twitchLink: kelrysTVLinkTwitch,
      txtTwitchLink: "Go to Kelrys TV",
      color: yellow,
      twitterLink: null,
    );
  }

}
