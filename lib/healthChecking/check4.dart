import 'package:flutter/material.dart';
import 'check1.dart' as check1;
import 'check2.dart' as check2;
import 'check3.dart' as check3;
import '../information.dart' as info;
import '../menu.dart' as menu;
import 'apiRequest.dart';
import '../bottom.dart' as bottom;

class checkPage extends StatefulWidget {
  @override
  _checkPageState createState() => _checkPageState();
}

class _checkPageState extends State<checkPage> {
  String serverText = '키 : ' +
      info.height +
      'cm, 몸무게:  ' +
      info.weight +
      'kg이다. 불편 및 걱정되는 사항 : ' +
      info.inconvenient +
      '이다.' +
      '평균적인 운동량 : ' +
      info.activity +
      '이다.';
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
                top: 240,
                left: 50,
                child: Container(
                  height: 300,
                  width: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(252, 251, 250, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FutureBuilder<String>(
                    future: sendDataToServer(
                        serverText), // 텍스트 내용을 sendDataToServer 함수의 인자로 전달
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // 데이터 전송 중일 때 표시할 UI
                        return CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        // 데이터 전송 중 에러가 발생했을 때 표시할 UI
                        return Text('데이터 전송 중 오류가 발생했습니다.');
                      } else {
                        // 데이터 전송이 완료되었을 때 표시할 UI
                        return Text(
                          snapshot.data ?? '', // 서버에서 받은 응답 데이터 표시
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 560,
                child: GestureDetector(
                  onTap: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  child: Container(
                    width: 154,
                    height: 47,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/check/finish.png"),
                        fit: BoxFit.fill,
                      ),
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
