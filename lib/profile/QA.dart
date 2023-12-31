import 'package:flutter/material.dart';
import '../bottom.dart' as bottom;
import '../sample_screen.dart' as sample;
import '../apiRequest.dart' as api;

class QAPage extends StatefulWidget {
  @override
  _QAPage createState() => _QAPage();
}

List<String> testQ = [];
List<String> testA = [];
List<String> testName = [
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
  '고길동',
  '허준김',
];
Future<void> submitQuestion(String titleInput, String contentInput) async {
  int test = await api.sendQuestion(sample.userid, titleInput, contentInput);
  // test 변수를 사용하여 필요한 작업 수행
}

Future<void> getQuestions() async {
  List<List<String>> test = await api.getUserQuestions(sample.userid);
  print('확인 변수${test}');
  testQ = test[0];
  testA = test[1];
  // test 변수를 사용하여 필요한 작업 수행
}

class _QAPage extends State<QAPage> {
  //생성자 부분 쪽에서 서버에 데이터를 요청한다. 이때 text 카테고리에 대한 정보를 받아온다? 이렇게 작성하면 될듯.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
    final double containerWidth = screenWidth;
    getQuestions();
    void refreshPage() {
      setState(() {
        // 상태를 업데이트하여 QAPage를 새로고침
      });
    }

    // 질문하기 버튼 클릭 이벤트 핸들러
    void onQuestionButtonPressed(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          String inputText = '';

          return AlertDialog(
            title: Text('질문하기'),
            content: TextField(
              onChanged: (value) {
                inputText = value;
              },
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  // 입력된 질문을 리스트에 저장
                  testQ.add(inputText);
                  testA.add(' ');
                  testName.add(' ');
                  submitQuestion(inputText, ' ');
                  // 여기서 원하는 추가적인 작업을 수행할 수 있습니다.

                  Navigator.of(context).pop(); // 다이얼로그 닫기
                  refreshPage();
                },
                child: Text('저장'),
              ),
            ],
          );
        },
      );
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
                  left: 160,
                  child: Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/profileImage/qna1.png'),
                      fit: BoxFit.fill,
                    )),
                  )),
              Positioned(
                  top: 255,
                  left: 215,
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/profileImage/qna2.png'),
                      fit: BoxFit.fill,
                    )),
                  )),
              Positioned(
                left: 25,
                top: 280, // ListView의 시작 위치
                child: SizedBox(
                  width: containerWidth * 0.87,
                  height: 330,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: testQ.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 140,
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
                                      left: 40,
                                      top: 20,
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
                                                    text: 'Q: ${testQ[index]}',
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
                                      left: 80,
                                      top: 70,
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
                                                    text: 'A: ${testA[index]}',
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
                                    right: 20,
                                    bottom: 10,
                                    child: Text(
                                      '-${testName[index]} 약사 답변-',
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
              Positioned(
                  left: 55,
                  top: 595,
                  child: GestureDetector(
                    onTap: () {
                      onQuestionButtonPressed(context);
                    },
                    child: Container(
                      width: 306,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBBF7D3),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Color(0xFFEFEDE9)),
                          borderRadius: BorderRadius.circular(24.40),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '질문하기',
                          style: TextStyle(
                            color: Color(0xFF151921),
                            fontSize: 20,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
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
