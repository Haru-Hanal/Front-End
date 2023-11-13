import 'package:flutter/material.dart';

import 'search_input.dart' as search;
import 'menu.dart' as menu;
import 'bottom.dart' as bottom;

class LayoutPage extends StatelessWidget {
  final String text;

  LayoutPage({required this.text});
  //생성자 부분 쪽에서 서버에 데이터를 요청한다. 이때 text 카테고리에 대한 정보를 받아온다? 이렇게 작성하면 될듯.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
    final double containerWidth = screenWidth;

    List<String> testNames = [
      'name1',
      'name2',
      'name3',
      'name4',
      'name5',
    ];
    List<String> testIngredients = [
      'gredient1',
      'gredient2',
      'gredient3',
      'gredient4',
      'gredient5',
    ];
    List<String> testPrices = [
      'price1',
      'price2',
      'price3',
      'price4',
      'price15',
    ];

    return Column(
      children: [
        // 배경
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
              // 상단 곡선
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
              // 상단 곡선
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

              // 상단 곡선
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
              //입력창
              search.HgihSearch(),

              // logo
              Positioned(
                left: containerWidth * 0.2,
                top: 35,
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
              Positioned(
                left: containerWidth * 0.06,
                top: 176,
                child: Text(
                  '-' + text + "-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF151921),
                    fontSize: 20,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                  ),
                ),
              ),

              Positioned(
                left: 25,
                top: 180, // ListView의 시작 위치
                child: SizedBox(
                  width: containerWidth * 0.87,
                  height: 450, // ListView의 높이 조정
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: testNames.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 100, // 박스의 높이
                              width: containerWidth * 0.87, // 박스의 너비
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 2, color: Color(0xFFE9DCC3)),
                                  borderRadius: BorderRadius.circular(16.27),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 120,
                                    top: 10,
                                    child: Text(
                                      testNames[index], // testNames[index] 출력
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 120,
                                    top: 30,
                                    child: Text(
                                      testIngredients[
                                          index], // testIngredient[index] 출력
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 60,
                                    bottom: 10,
                                    child: Text(
                                      testPrices[index], // testPrices[index] 출력
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -10,
                                    bottom: 00,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // 버튼 기능을 구현하세요.
                                      },
                                      child: Image.asset(
                                        'assets/CartIcon.png',
                                        width: 40,
                                        height: 40,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors
                                            .transparent, // 버튼 배경색을 투명으로 설정
                                        onPrimary: Colors
                                            .transparent, // 버튼 텍스트 색을 투명으로 설정
                                        shadowColor: Colors
                                            .transparent, // 그림자 색을 투명으로 설정
                                        side: BorderSide.none, // 테두리 없음
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10), // 간격 추가
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),

              // 하단 버튼
              Positioned(left: 0, top: 645, child: bottom.bottomPage()),
            ],
          ),
        ),
      ],
    );
  }
}
