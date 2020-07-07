import '../controller/Colors.dart';
import 'package:flutter/material.dart';

class ContainerBackground extends Container {
  ContainerBackground({@required BuildContext context, @required Widget child})
      : super(
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
          child: child,
        );
}
