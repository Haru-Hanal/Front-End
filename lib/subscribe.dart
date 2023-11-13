import 'package:flutter/material.dart';
import 'bottom.dart' as bottom;

class subscribePage extends StatelessWidget {
  //생성자 부분 쪽에서 서버에 데이터를 요청한다. 이때 text 카테고리에 대한 정보를 받아온다? 이렇게 작성하면 될듯.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
    final double containerWidth = screenWidth;

    return Column(
      children: [
        // 배경
        Container(
          width: containerWidth,
          height: containerHeight,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
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
              Positioned(
                left: 18,
                top: 225,
                child: SizedBox(
                  width: 301,
                  height: 58,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'One pill a day',
                          style: TextStyle(
                            color: Color(0xFF151921),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '에서 당신의 건강상태에 맞는 영양제를 추천 받아보세요',
                          style: TextStyle(
                            color: Color(0xFF151921),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                left: 22,
                top: 305,
                child: SizedBox(
                  width: 197,
                  height: 23,
                  child: Text(
                    '당신은 현재 구독 중입니다.',
                    style: TextStyle(
                      color: Color(0xFF00A023),
                      fontSize: 15,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 329,
                child: SizedBox(
                  width: 276,
                  height: 23,
                  child: Text(
                    '취소하시면 아래의 서비스를 놓치게 됩니다.',
                    style: TextStyle(
                      color: Color(0xFF00A023),
                      fontSize: 15,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 366,
                child: Container(
                  width: 240,
                  height: 222,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 207,
                          height: 22,
                          child: Text(
                            '당신의 건강상태를 체크합니다.',
                            style: TextStyle(
                              color: Color(0xFF43AD31),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 40,
                        child: SizedBox(
                          width: 240,
                          height: 22,
                          child: Text(
                            '건강상태에 맞는 영양제를 추천합니다.',
                            style: TextStyle(
                              color: Color(0xFF43AD31),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 80,
                        child: SizedBox(
                          width: 224,
                          height: 22,
                          child: Text(
                            '전문가와 실시간 상담이 가능합니다.',
                            style: TextStyle(
                              color: Color(0xFF43AD31),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 120,
                        child: SizedBox(
                          width: 223,
                          height: 22,
                          child: Text(
                            '매달 커피 한 잔 가격으로 즐기는 서비스',
                            style: TextStyle(
                              color: Color(0xFF43AD31),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 160,
                        child: SizedBox(
                          width: 207,
                          height: 22,
                          child: Text(
                            '무료 배송',
                            style: TextStyle(
                              color: Color(0xFF43AD31),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 200,
                        child: SizedBox(
                          width: 230,
                          height: 22,
                          child: Text(
                            '광고 제거',
                            style: TextStyle(
                              color: Color(0xFF43AD31),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 350,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/checkButton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 390,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/checkButton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 430,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/checkButton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 470,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/checkButton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 510,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/checkButton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 550,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/checkButton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 150,
                  top: 580,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('구독 취소'),
                          content: Text('구독을 취소하시겠습니까?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // 구독 취소 로직을 추가
                                bottom.subcribe = !bottom.subcribe;
                                Navigator.of(context).pop(); // 알림창 닫기
                                Navigator.of(context).pop();
                              },
                              child: Text('확인'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // 알림창 닫기
                              },
                              child: Text('취소'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                      width: 121,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFF93B9),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Color(0xFFEFEDE9)),
                          borderRadius: BorderRadius.circular(24.40),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '구독 취소',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                    ),
                  )),
              // 하단 버튼
              Positioned(left: 0, top: 645, child: bottom.bottomPage()),
            ],
          ),
        ),
      ],
    );
  }
}
