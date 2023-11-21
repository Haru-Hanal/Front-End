import 'package:flutter/material.dart';
import '../bottom.dart' as bottom;
import 'apiRequest.dart' as api;
import 'sample_screen.dart' as sample;

class reviewPage extends StatefulWidget {
  @override
  _reviewPage createState() => _reviewPage();
}

List<List<String>> test = [];
Future<void> submitReview() async {
  test = await api.getTotalReview();
  // test 변수를 사용하여 필요한 작업 수행
}

class _reviewPage extends State<reviewPage> {
  //생성자 부분 쪽에서 서버에 데이터를 요청한다. 이때 text 카테고리에 대한 정보를 받아온다? 이렇게 작성하면 될듯.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
    final double containerWidth = screenWidth;
    submitReview();
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
              //상단?

              Positioned(
                left: 25,
                top: 80, // ListView의 시작 위치
                child: SizedBox(
                  width: containerWidth * 0.87,
                  height: 550,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: test.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 110,
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
                                          width: 340,
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
                                                        '제목 : ${test[index][1]}',
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
                                      left: 15,
                                      top: 40,
                                      child: Container(
                                          width: 340,
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
                                                        '내용 : ${test[index][2]}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      height: 1.4,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              )),
                                            ],
                                          ))),
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
