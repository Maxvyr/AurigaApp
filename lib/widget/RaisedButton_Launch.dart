import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RaisedButtonLaunch extends StatelessWidget {
  final dynamic function;
  final String txt;
  final Color color;

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
        padding: EdgeInsets.symmetric(vertical: 15.0),
        elevation: 15.0,
        onPressed: function,
        child: Text(
          txt,
          style: GoogleFonts.mina(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
                color: Colors.grey,
              ),
            ],
          ),
          // style: TextStyle(
          //   fontSize: 20.0,
          //   fontWeight: FontWeight.w600,
          // ),
        ),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
