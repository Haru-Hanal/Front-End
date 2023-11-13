import 'package:flutter/material.dart';
import 'layout.dart' as layout;

void navigateToLayoutPage(BuildContext context, String text) {
  Navigator.push(
    context,
    PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        Offset begin = Offset(1.0, 0.0);
        Offset end = Offset.zero;
        Curve curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) =>
          layout.LayoutPage(text: text),
    ),
  );
}
