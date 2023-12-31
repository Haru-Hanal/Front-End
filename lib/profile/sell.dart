import 'package:flutter/material.dart';
import '../bottom.dart' as bottom;

class SellPage extends StatefulWidget {
  @override
  _SellPage createState() => _SellPage();
}

class _SellPage extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
    final double containerWidth = screenWidth;
    List<String> testOrderNumber = [
      '3243526',
      '3243527',
    ];
    List<String> testOrderDate = [
      '2023년 11월 2일',
      '2023년 10월 17일',
    ];
    List<String> testOrderState = [
      '배송 중',
      '배송 완료',
    ];
    List<String> testDeliveryDate = [
      '2023년 11월 7일',
      '2023년 10월 24일',
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
              //상단?
              Positioned(
                top: 100,
                left: 33,
                child: Container(
                  width: containerWidth,
                  height: 181.32,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 81.32,
                          height: 81.32,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1.63, color: Color(0xFFBFB5FF)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6.51,
                        top: 6.51,
                        child: Container(
                          width: 68.31,
                          height: 68.31,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF3F2E9),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        top: 0,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/profile.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 94.33,
                        top: 20.38,
                        child: Text(
                          '김가천',
                          style: TextStyle(
                            color: Color(0xFF151921),
                            fontSize: 20,
                            fontFamily: 'Be Vietnam Pro',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 94.33,
                        top: 40.71,
                        child: Text(
                          'Kimagachon@gachon.ac.kr',
                          style: TextStyle(
                            color: Color(0xFF828488),
                            fontSize: 13.38,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 94.33,
                        top: 70.30,
                        child: Text(
                          'Registered Since Dec 2023',
                          style: TextStyle(
                            color: Color(0xFF0BAB7C),
                            fontSize: 13.38,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 320,
                        top: 20,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/reWritten.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 230,
                  left: 180,
                  child: Container(
                    width: 52,
                    height: 62,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/profileImage/profileOrder.png'),
                      fit: BoxFit.fill,
                    )),
                  )),
              Positioned(
                left: 25,
                top: 280, // ListView의 시작 위치
                child: SizedBox(
                  width: containerWidth * 0.87,
                  height: 340,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: testOrderNumber.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 170,
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
                                      left: 15,
                                      top: 10,
                                      child: Container(
                                          width: 300,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                  child: RichText(
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 5,
                                                strutStyle:
                                                    StrutStyle(fontSize: 16.0),
                                                text: TextSpan(
                                                    text:
                                                        '주문번호 #${testOrderNumber[index]}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      height: 1.4,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              )),
                                            ],
                                          ))),
                                  Positioned(
                                      left: 17,
                                      top: 30,
                                      child: Container(
                                          width: 280,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                  child: RichText(
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 5,
                                                strutStyle:
                                                    StrutStyle(fontSize: 14.0),
                                                text: TextSpan(
                                                    text:
                                                        '${testOrderDate[index]} 주문됨',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      height: 1.4,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              )),
                                            ],
                                          ))),
                                  Positioned(
                                    left: 17,
                                    top: 50,
                                    child: Text(
                                      '상태: ${testOrderState[index]}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 17,
                                    top: 70,
                                    child: Text(
                                      '배송날짜: ${testDeliveryDate[index]}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
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
