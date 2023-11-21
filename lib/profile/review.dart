import 'dart:ffi';

import 'package:flutter/material.dart';
import '../bottom.dart' as bottom;
import '../sample_screen.dart' as sample;
import '../apiRequest.dart' as api;

class reviewPage extends StatefulWidget {
  @override
  _reviewPage createState() => _reviewPage();
}

List<String> testQ = [];
List<String> testA = [];

List<int> testIndex = [];
Future<void> submitReview(String titleInput, String contentInput) async {
  int test = await api.sendReview(sample.userid, titleInput, contentInput);
  int sizeText = testIndex.length;
  print('확인 변수${test}');
  testIndex.add(test);
  // test 변수를 사용하여 필요한 작업 수행
}

Future<void> getReview() async {
  List<List<String>> test = await api.getUserReview(sample.userid);
  print('확인 변수${test}');
  testQ = test[1];
  testA = test[2];
  testIndex = test[0].map((value) => int.parse(value)).toList();
  print(testIndex);

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
    getReview();
    void refreshPage() {
      setState(() {
        // 상태를 업데이트하여 QAPage를 새로고침
      });
    }

    void onQuestionButtonPressed(BuildContext context) {
      String titleInput = '';
      String contentInput = '';

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('질문하기'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {
                    titleInput = value;
                  },
                  decoration: InputDecoration(
                    hintText: '제목',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onChanged: (value) {
                    contentInput = value;
                  },
                  decoration: InputDecoration(
                    hintText: '내용',
                  ),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  // 입력된 질문을 리스트에 저장
                  testQ.add(titleInput);
                  testA.add(contentInput);
                  submitReview(titleInput, contentInput);

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
                left: 25,
                top: 180, // ListView의 시작 위치
                child: SizedBox(
                  width: containerWidth * 0.87,
                  height: 450,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: testQ.length,
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
                                                        '제목 : ${testQ[index]}',
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
                                                        '내용 : ${testA[index]}',
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
                                  Positioned(
                                    right: 10,
                                    top: 5,
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("버튼 클릭"),
                                              content: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      api.deleteReview(
                                                          testIndex[index]);
                                                      setState(() {
                                                        testQ.removeAt(index);
                                                        testA.removeAt(index);
                                                        testIndex
                                                            .removeAt(index);
                                                      });
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text("삭제"),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          String updatedTestQ =
                                                              testQ[
                                                                  index]; // 수정된 testQ[index] 값을 저장할 변수
                                                          String updatedTestA =
                                                              testA[
                                                                  index]; // 수정된 testA[index] 값을 저장할 변수

                                                          TextEditingController
                                                              questionController =
                                                              TextEditingController(
                                                                  text:
                                                                      updatedTestQ); // 질문 입력 필드에 기존 값 설정
                                                          TextEditingController
                                                              answerController =
                                                              TextEditingController(
                                                                  text:
                                                                      updatedTestA); // 답변 입력 필드에 기존 값 설정

                                                          return AlertDialog(
                                                            title: Text("수정"),
                                                            content:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                children: [
                                                                  TextField(
                                                                    controller:
                                                                        questionController,
                                                                    decoration: InputDecoration(
                                                                        labelText:
                                                                            "질문"),
                                                                    onChanged:
                                                                        (value) {
                                                                      updatedTestQ =
                                                                          value; // 질문 값이 변경되면 업데이트
                                                                    },
                                                                  ),
                                                                  TextField(
                                                                    controller:
                                                                        answerController,
                                                                    decoration: InputDecoration(
                                                                        labelText:
                                                                            "답변"),
                                                                    onChanged:
                                                                        (value) {
                                                                      updatedTestA =
                                                                          value; // 답변 값이 변경되면 업데이트
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            actions: [
                                                              ElevatedButton(
                                                                onPressed: () {
                                                                  print(
                                                                      '질문 수정');
                                                                  print(testIndex[
                                                                      index]);
                                                                  api.updateReview(
                                                                      testIndex[
                                                                          index],
                                                                      updatedTestQ,
                                                                      updatedTestA);
                                                                  setState(() {
                                                                    testQ[index] =
                                                                        updatedTestQ; // 수정된 testQ[index] 값으로 업데이트
                                                                    testA[index] =
                                                                        updatedTestA; // 수정된 testA[index] 값으로 업데이트
                                                                  });
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop(); // showDialog 닫기
                                                                },
                                                                child:
                                                                    Text("저장"),
                                                              ),
                                                              ElevatedButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop(); // showDialog 닫기
                                                                },
                                                                child:
                                                                    Text("취소"),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Text("수정"),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text("취소"),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          boxShadow: [],
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/menuIcon.png"),
                                          ),
                                        ),
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
                          '리뷰 작성',
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
