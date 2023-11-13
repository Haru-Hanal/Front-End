import 'package:flutter/material.dart';
import 'check3.dart' as check;
import '../menu.dart' as menu;
//import 'checkButtonlayout.dart' as Button;
import '../information.dart' as info;
import '../bottom.dart' as bottom;

class checkPage extends StatefulWidget {
  @override
  _checkPageState createState() => _checkPageState();
}

class _checkPageState extends State<checkPage> {
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
              //상단?
              Positioned(
                top: 110,
                left: 30,
                child: Container(
                  width: 305.76,
                  height: 81.32,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 110.86,
                        top: 19.99,
                        child: Text(
                          '건강체크 진단',
                          style: TextStyle(
                            color: Color(0xFF151921),
                            fontSize: 20.64,
                            fontFamily: 'Be Vietnam Pro',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6.86,
                        top: 9.99,
                        child: Container(
                          width: 19.52,
                          height: 19.52,
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 1.63,
                                  top: 3.66,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 20.26,
                                      height: 16.20,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/back.png'),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                  top: 160,
                  left: 70,
                  child: Container(
                    width: 400,
                    height: 190,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 48,
                          child: SizedBox(
                            width: 206,
                            height: 64,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n 불편하거나 걱정되는 것을\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ',
                                    style: TextStyle(
                                      color: Color(0xFF151921),
                                      fontSize: 14.64,
                                      fontFamily: 'Be Vietnam Pro',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '최대 3가지',
                                    style: TextStyle(
                                      color: Color(0xFFEB5939),
                                      fontSize: 14.64,
                                      fontFamily: 'Be Vietnam Pro',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 선택하세요',
                                    style: TextStyle(
                                      color: Color(0xFF151921),
                                      fontSize: 14.64,
                                      fontFamily: 'Be Vietnam Pro',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: -10,
                          top: 65,
                          child: Container(
                            width: 268,
                            height: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/check/red2.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              //checkbutton
              // Positioned(top: 0, left: 0, child: Button.ButtonGrid()),
              //nextButton

              Positioned(top: 280, left: 73, child: ButtonGrid()),
              Positioned(
                left: 150,
                top: 590,
                child: GestureDetector(
                  onTap: () {
                    saveSelectedItems();
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
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
                    width: 107,
                    height: 44,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/check/nextButton.png"),
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

List<String> selectedItems = []; // 선택된 항목을 저장할 리스트
void saveSelectedItems() {
  // 선택된 항목을 특정 문자열에 저장하는 함수
  info.inconvenient = '';
  info.inconvenient = selectedItems.join(', '); // 선택된 항목들을 쉼표로 구분하여 문자열로 변환
  selectedItems = [];
}

class ButtonGrid extends StatefulWidget {
  @override
  _ButtonGridState createState() => _ButtonGridState();
}

class _ButtonGridState extends State<ButtonGrid> {
  List<String> buttonValues = [
    '(피부)',
    '(두뇌활동)',
    '(피로감)',
    '(뼈,관절)',
    '(면역)',
    '(모발)',
    '(소화, 장)',
    '(혈관, 혈액순환)',
    '(눈)',
  ];
  List<bool> buttonStates = List.generate(9, (index) => false);

  void updateButtonState(int index) {
    setState(() {
      if (buttonStates[index]) {
        buttonStates[index] = false;
        selectedItems.remove(buttonValues[index]); // 선택 해제된 항목 제거
      } else {
        buttonStates[index] = true;
        selectedItems.add(buttonValues[index]); // 선택된 항목 추가
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 1,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 3, // 버튼의 가로 너비와 세로 높이 비율을 조정합니다
              padding: EdgeInsets.all(0),
              children: List.generate(
                9,
                (index) {
                  return Padding(
                      padding: EdgeInsets.all(4),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (states) {
                              if (buttonStates[index]) {
                                return Color(0xFFBFB5FF); // 버튼이 활성화되었을 때 배경색
                              } else {
                                return Color((0xFFFBFAF3)); // 버튼이 비활성화되었을 때 배경색
                              }
                            },
                          ),

                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.81, color: Color(0xFFEFEDE9)),
                              borderRadius: BorderRadius.circular(
                                  24.40), // 버튼의 모서리 둥글기 설정
                            ),
                          ),
                          // 여기에 추가적인 스타일 속성을 설정할 수 있습니다
                        ),
                        onPressed: () {
                          updateButtonState(index);
                        },
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 100, maxHeight: 100),
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Text(
                                  buttonValues[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF828488),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
