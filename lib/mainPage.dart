import 'package:flutter/material.dart';
import 'category.dart' as category;
import 'search_input.dart' as search;
import 'layoutCall.dart';
import 'healthChecking/healthCheck.dart' as check;
import 'bottom.dart' as bottom;
import 'review.dart' as review;
import 'Nutrition.dart' as nut;

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: ListView(children: [
          Medicines(),
        ]),
      ),
    );
  }
}

class Medicines extends StatelessWidget {
  void navigateToCategoryPage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset(0.0, 0.0);
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) =>
            category.CategoryPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight * 0.96;
    final double containerWidth = screenWidth;
    return Column(
      children: [
        //배경
        Container(
          width: containerWidth,
          height: containerHeight,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color.fromARGB(252, 251, 250, 243),
            shape: RoundedRectangleBorder(),
          ),
          child: Stack(
            children: [
              // 입력창
              search.SearchInput(),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: containerWidth,
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/BG.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //상단 곡선
              Positioned(
                left: 445.83,
                top: -1435,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.62),
                  child: Container(
                    width: 860.39,
                    height: 1560.06,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 5, color: Color(0xFFB1E9C3)),
                      ),
                    ),
                  ),
                ),
              ),
              //상단 곡선
              Positioned(
                left: 673.83,
                top: -1422,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.62),
                  child: Container(
                    width: 860.39,
                    height: 1560.06,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 5, color: Color(0xFFB1E9C3)),
                      ),
                    ),
                  ),
                ),
              ),
              //곡선
              Positioned(
                left: 820.83,
                top: -1418,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.62),
                  child: Container(
                    width: 860.39,
                    height: 1560.06,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 5, color: Color(0xFFB1E9C3)),
                      ),
                    ),
                  ),
                ),
              ),
              //자가진단 버튼
              Positioned(
                  left: containerWidth * 0.06,
                  top: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  check.checkPage(),
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
                      width: 93 * 1.1,
                      height: 105 * 1.1,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 93 * 1.1,
                              height: 105 * 1.1,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F5F5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19.52),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.25,
                            top: 12,
                            child: SizedBox(
                              width: 71.72,
                              height: 17.07,
                              child: Text(
                                '건강상태 체크',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.39,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 0.15,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -2,
                            top: 1,
                            child: Container(
                              width: 112,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/selfTest.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              //상단 곡선

              //상단 영양제 버튼
              Positioned(
                  left: containerWidth * 0.38,
                  top: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  nut.nutritionPage(),
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
                      width: 92 * 1.1,
                      height: 105 * 1.1,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF0BAB7C),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 92 * 1.1,
                              height: 105 * 1.1,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F5F5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19.52),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.92,
                            top: 12,
                            child: SizedBox(
                              width: 70.95,
                              height: 17.07,
                              child: Text(
                                '추천 영양제',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.39,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 0.15,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -15,
                            top: -10,
                            child: Container(
                              width: 136,
                              height: 136,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/medicine.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              // 상단 후기 버튼
              Positioned(
                  left: containerWidth * 0.7,
                  top: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  review.reviewPage(),
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
                      width: 93 * 1.1,
                      height: 105 * 1.1,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF9400D3),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 93 * 1.1,
                              height: 105 * 1.1,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F5F5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19.52),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.25,
                            top: 12,
                            child: SizedBox(
                              width: 71.72,
                              height: 17.07,
                              child: Text(
                                '후기',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.39,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 0.15,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 3,
                            top: 11,
                            child: Container(
                              width: 87,
                              height: 94,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/review.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),

              Positioned(
                left: 24,
                top: 320,
                child: Container(
                  width: containerWidth * 0.9,
                  height: 308.23,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: containerWidth * 0.9,
                          height: 50.14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 10,
                                child: Text(
                                  'Categories',
                                  style: TextStyle(
                                    color: Color(0xFF151921),
                                    fontSize: 16.27,
                                    fontFamily: 'Be Vietnam Pro',
                                    fontWeight: FontWeight.w700,
                                    height: 0.07,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: containerWidth * 0.73,
                                top: 3,
                                child: SizedBox(
                                  width: 60,
                                  height: 23,
                                  child: TextButton(
                                    onPressed: () {
                                      navigateToCategoryPage(context);
                                    },
                                    child: Text(
                                      'SEE All',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF151921),
                                        fontSize: 11.39,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w700,
                                        height: 0.15,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -0,
                        top: 33.34,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'Lactobacilli');
                          },
                          child: Container(
                            width: 94.34 * 1.1,
                            height: 130.94 * 1.1,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 94.34 * 1.1,
                                    height: 97.59 * 1.25,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.81,
                                            color: Color(0xFFEFEDE9)),
                                        borderRadius:
                                            BorderRadius.circular(16.27),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -12,
                                  top: 109.10,
                                  child: SizedBox(
                                    width: 65.87 * 2,
                                    height: 26.84 * 2,
                                    child: Text(
                                      '''Lactobacilli''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF151921),
                                        fontSize: 11.39,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w600,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13.01 * 1.1,
                                  top: 15.45 * 1.1,
                                  child: Container(
                                    width: 69.13 * 1.1,
                                    height: 69.13 * 1.1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Nutritional/Lactobacilli/NOW Foods, Probiotics.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: containerWidth * 0.31,
                        top: 33.34,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'Lutein');
                          },
                          child: Container(
                            width: 94.34 * 1.1,
                            height: 116.30 * 1.1,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 94.34 * 1.1,
                                    height: 97.59 * 1.25,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.81,
                                            color: Color(0xFFEFEDE9)),
                                        borderRadius:
                                            BorderRadius.circular(16.27),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 35.31,
                                  top: 109.10,
                                  child: Text(
                                    'Lutein',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF151921),
                                      fontSize: 11.39,
                                      fontFamily: 'Be Vietnam Pro',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 11.39 * 1.1,
                                  top: 1.63 * 8,
                                  child: Container(
                                    width: 67.29 * 1.1,
                                    height: 101.66 * 0.8,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Nutritional/Lutein/Doctor's Best, Lutein.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: containerWidth * 0.62,
                        top: 33.34,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'milk');
                          },
                          child: Container(
                            width: 94.34 * 1.1,
                            height: 131.75 * 1.1,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 94.34 * 1.1,
                                    height: 97.59 * 1.25,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.81,
                                            color: Color(0xFFEFEDE9)),
                                        borderRadius:
                                            BorderRadius.circular(16.27),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -30,
                                  top: 109.10,
                                  child: SizedBox(
                                    width: 80.51 * 2,
                                    height: 27.65 * 2,
                                    child: Text(
                                      '''milk thistle''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF151921),
                                        fontSize: 11.39,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w600,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10.51,
                                  top: 13.95,
                                  child: Container(
                                    width: 81.33 * 1,
                                    height: 81.33 * 1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Nutritional/milk/NOW Foods, Milk Thistle.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -0,
                        top: 176.48,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'Minerals');
                          },
                          child: Container(
                            width: 94.34 * 1.1,
                            height: 131.75 * 1.1,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 94.34 * 1.1,
                                    height: 97.59 * 1.25,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.81,
                                            color: Color(0xFFEFEDE9)),
                                        borderRadius:
                                            BorderRadius.circular(16.27),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13.01 * 1.1,
                                  top: 15.45 * 1.1,
                                  child: Container(
                                    width: 69.13 * 1.1,
                                    height: 66.42 * 1.1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Nutritional/Minerals/21st Century, Mineral.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 14.64 * 1.4,
                                  top: 104.91,
                                  child: SizedBox(
                                    width: 65.87,
                                    height: 26.84,
                                    child: Text(
                                      '''Minerals''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF151921),
                                        fontSize: 11.39,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w600,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: containerWidth * 0.31,
                        top: 176.48,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'Omega');
                          },
                          child: Container(
                            width: 94.34 * 1.1,
                            height: 117.11 * 1.1,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 94.34 * 1.1,
                                    height: 97.59 * 1.25,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.81,
                                            color: Color(0xFFEFEDE9)),
                                        borderRadius:
                                            BorderRadius.circular(16.27),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16.36 * 2,
                                  top: 104.91 * 1.05,
                                  child: Text(
                                    'Omega',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF151921),
                                      fontSize: 11.39,
                                      fontFamily: 'Be Vietnam Pro',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.13 * 1.1,
                                  top: 10.57 * 1.1,
                                  child: Container(
                                    width: 81.33 * 1.1,
                                    height: 81.33 * 1.1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Nutritional/Omega/California Gold Nutrition, Omega3.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: containerWidth * 0.62,
                        top: 176.48,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'Vitamin');
                          },
                          child: Container(
                            width: 94.34 * 1.1,
                            height: 117.11 * 1.1,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 94.34 * 1.1,
                                    height: 97.59 * 1.25,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.81,
                                            color: Color(0xFFEFEDE9)),
                                        borderRadius:
                                            BorderRadius.circular(16.27),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12.16 * 2.5,
                                  top: 104.91 * 1.05,
                                  child: Text(
                                    'Vitamin',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF151921),
                                      fontSize: 11.39,
                                      fontFamily: 'Be Vietnam Pro',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19.52 * 1.1,
                                  top: 10.57 * 1.1,
                                  child: Container(
                                    width: 56.25 * 1.1,
                                    height: 81.33 * 1.1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Nutritional/Vitamin/21st Century, Multi-Vitamin.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //logo
              Positioned(
                left: containerWidth * 0.05,
                top: 16,
                child: Container(
                  width: 222 * 1.6,
                  height: 49 * 1.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(left: 0, top: 620, child: bottom.bottomPage()),
            ],
          ),
        ),
      ],
    );
  }
}
