import 'package:flutter/material.dart';
import 'layoutCall.dart';

import 'search_input.dart' as search;
import 'menu.dart' as menu;
import 'bottom.dart' as bottom;

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
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

              //상단 곡선
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
              search.HgihSearch(),
              Positioned(
                left: 24,
                top: 150,
                child: Container(
                  width: containerWidth * 0.9,
                  height: 308.23,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -0,
                        top: 33.34,
                        child: GestureDetector(
                          onTap: () {
                            navigateToLayoutPage(context, 'Nutritional Drinks');
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
                                  top: 104.10,
                                  child: SizedBox(
                                    width: 65.87 * 2,
                                    height: 26.84 * 2,
                                    child: Text(
                                      '''Nutritional
                                    
                                    
                                    
                                       
                                       
                                       
                                       
                                       
                                       
                                       Drinks''',
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
                                        image: AssetImage("assets/layout1.png"),
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
                            navigateToLayoutPage(context, 'Ayurveda');
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
                                  left: 25.31,
                                  top: 109.10,
                                  child: Text(
                                    'Ayurveda',
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
                                  top: 1.63 * 1.1,
                                  child: Container(
                                    width: 67.29 * 1.1,
                                    height: 101.66 * 1.1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/layout2.png"),
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
                            navigateToLayoutPage(
                                context, 'Vitamins & Supplement');
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
                                  top: 104.10,
                                  child: SizedBox(
                                    width: 80.51 * 2,
                                    height: 27.65 * 2,
                                    child: Text(
                                      '''Vitamins &






                                    Supplement''',
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
                                  left: 6.51,
                                  top: 8.95,
                                  child: Container(
                                    width: 81.33 * 1.1,
                                    height: 81.33 * 1.1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/layout3.png"),
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
                            navigateToLayoutPage(context, 'Healthcare Devices');
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
                                        image: AssetImage("assets/layout4.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 14.64 * 1.2,
                                  top: 104.91,
                                  child: SizedBox(
                                    width: 65.87,
                                    height: 26.84,
                                    child: Text(
                                      '''Healthcare
                                    
                                    
                                    
                                    
                                      
                                      
                                      
                                      Devices''',
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
                            navigateToLayoutPage(context, 'Homeopathy');
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
                                  left: 8.36 * 2,
                                  top: 104.91 * 1.05,
                                  child: Text(
                                    'Homeopathy',
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
                                        image: AssetImage("assets/layout5.png"),
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
                            navigateToLayoutPage(context, 'Diabetes Care');
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
                                  left: 6.16 * 2.5,
                                  top: 104.91 * 1.05,
                                  child: Text(
                                    'Diabetes Care',
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
                                        image: AssetImage("assets/layout6.png"),
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
                left: containerWidth * 0.2,
                top: 34,
                child: Container(
                  width: 222 * 1.1,
                  height: 49 * 1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //하단 버튼
              Positioned(left: 0, top: 645, child: bottom.bottomPage()),
            ],
          ),
        ),
      ],
    );
  }
}
