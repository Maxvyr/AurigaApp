import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RaisedButtonLaunch extends StatelessWidget {
  dynamic function;
  String txt;
  Color color;

  RaisedButtonLaunch({
    @required this.function,
    @required this.txt,
    @required this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: RaisedButton(
        elevation: 15.0,
        onPressed: function,
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
