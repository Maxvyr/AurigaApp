import 'package:flutter/material.dart';

class AppBarAuriga extends AppBar {
  AppBarAuriga({
    @required String titleTex,
  }) : super(
          title: Text(titleTex),
          elevation: 15.0,
          centerTitle: true,
        );
}
