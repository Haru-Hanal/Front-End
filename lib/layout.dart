import 'package:flutter/material.dart';

import 'search_input.dart' as search;
import 'menu.dart' as menu;
import 'bottom.dart' as bottom;
import 'data/Lactobacilli.dart' as Lactobacilli;
import 'data/Lutein.dart' as Lutein;
import 'data/milk.dart' as milk;
import 'data/Minerals.dart' as Minerals;
import 'data/Omega.dart' as Omega;
import 'data/Vitamin.dart' as Vitamin;
import 'package:path/path.dart' as path;

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
    String filePath = path.join('data', text);

    List<String> testNames = [];
    List<String> testIngredients = [];
    List<String> testPrices = [];
    switch (text) {
      case 'Lutein':
        testNames = Lutein.Names;
        testIngredients = Lutein.Ingredients;
        testPrices = Lutein.Prices;
        break;
      case 'milk':
        // text가 '2'일 때 실행할 코드 작성
        testNames = milk.Names;
        testIngredients = milk.Ingredients;
        testPrices = milk.Prices;
        break;
      case 'Minerals':
        // text가 '3'일 때 실행할 코드 작성
        testNames = Minerals.Names;
        testIngredients = Minerals.Ingredients;
        testPrices = Minerals.Prices;
        break;
      case 'Omega':
        // text가 '4'일 때 실행할 코드 작성
        testNames = Omega.Names;
        testIngredients = Omega.Ingredients;
        testPrices = Omega.Prices;
        break;
      case 'Vitamin':
        // text가 '5'일 때 실행할 코드 작성
        testNames = Vitamin.Names;
        testIngredients = Vitamin.Ingredients;
        testPrices = Vitamin.Prices;
        break;
      case 'Lactobacilli':
        // text가 '6'일 때 실행할 코드 작성
        testNames = Lactobacilli.Names;
        testIngredients = Lactobacilli.Ingredients;
        testPrices = Lactobacilli.Prices;
        break;
      default:
        // text가 1부터 6까지의 값이 아닐 때 실행할 코드 작성
        print('text는 1부터 6까지의 값이 아닙니다.');
        break;
    }

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
                  height: 450,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: testNames.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 100,
                              width: containerWidth * 0.87,
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
                                    left: 110,
                                    top: 10,
                                    child: Text(
                                      testNames[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 110,
                                    top: 30,
                                    child: Text(
                                      testIngredients[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: -10,
                                    bottom: 2,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/Nutritional/${text}/${testNames[index]}.png',
                                        width: 90,
                                        height: 90,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        onPrimary: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        side: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 60,
                                    bottom: 10,
                                    child: Text(
                                      testPrices[index],
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
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/CartIcon.png',
                                        width: 40,
                                        height: 40,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        onPrimary: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        side: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
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
