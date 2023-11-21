import 'package:flutter/material.dart';
import 'NoSubscribe.dart' as Nosub;
import 'subscribe.dart' as sub;
import 'menu.dart' as menu;
import 'sample_screen.dart' as sample;

bool subcribe = sample.subscribe == 1 ? true : false;

class bottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;

    return Container(
      width: containerWidth,
      height: 72.50,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: containerWidth,
              height: 62.50,
              decoration: BoxDecoration(color: Color(0xFFD8F7D4)),
            ),
          ),
          //하단 좌측버튼
          Positioned(
              left: containerWidth * 0.18,
              top: 9,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          subcribe
                              ? sub.subscribePage()
                              : Nosub.subscribePage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: 44,
                  height: 42,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bottomLeft.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          // 하단 중앙버튼
          Positioned(
            left: containerWidth * 0.45,
            top: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Container(
                width: 54,
                height: 47,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bottomMain.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          //하단 우측버튼
          Positioned(
            left: containerWidth * 0.7,
            top: 9,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        menu.MenuPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var begin = Offset(1.0, 0.0);
                      var end = Offset.zero;
                      var curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: 44,
                height: 42,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bottomRight.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
