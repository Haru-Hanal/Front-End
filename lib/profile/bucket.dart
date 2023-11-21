import 'package:flutter/material.dart';
import '../bottom.dart' as bottom;

class BucketPage extends StatefulWidget {
  @override
  _BucketPage createState() => _BucketPage();
}

List<int> _selectedValue = [1, 2, 4, 3, 1];
List<String> testNames = ['테스트1', '테스트2', '테스트3', '테스트4', '테스트5'];
List<String> testIngredients = [
  '재료1',
  '재료2',
  '재료3',
  '재료4',
  '재료5',
];
List<String> testPrices = ['1000', '2000', '3000', '4000', '5000'];
List<bool> _checkboxValues = [false, false, false, false, false];
bool isChecked = false;

class _BucketPage extends State<BucketPage> {
  //생성자 부분 쪽에서 서버에 데이터를 요청한다. 이때 text 카테고리에 대한 정보를 받아온다? 이렇게 작성하면 될듯.
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final double containerHeight = screenHeight;
    final double containerWidth = screenWidth;

    void _openSelectionScreen(int index) async {
      int newValue = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('선택창'),
            content: Container(
              width: 200.0,
              height: 300.0,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, selectedIndex) {
                  final value = selectedIndex + 1;
                  return ListTile(
                    title: Text('$value'),
                    onTap: () {
                      Navigator.pop(context, value);
                    },
                    selected: _selectedValue[index] == value,
                  );
                },
              ),
            ),
          );
        },
      );

      if (true) {
        setState(() {
          _selectedValue[index] = newValue;
        });
      }
      print('asdfasdf${_selectedValue}');
    }

    void _toggleCheckboxValue(int index, bool value) {
      setState(() {
        _checkboxValues[index] = value;
      });
      print('asdfasdf${_checkboxValues}');
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
                  top: 220,
                  left: 175,
                  child: Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image:
                          AssetImage('assets/profileImage/profileBucket.png'),
                      fit: BoxFit.fill,
                    )),
                  )),

              Positioned(
                left: 25,
                top: 280, // ListView의 시작 위치
                child: SizedBox(
                  width: containerWidth * 0.87,
                  height: 300, // ListView의 높이 조정
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        if (testNames.isNotEmpty)
                          ...List.generate(testNames.length, (index) {
                            return Column(
                              children: [
                                Container(
                                  height: 140,
                                  width: containerWidth * 0.87,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 2, color: Color(0xFFEFEDE9)),
                                      borderRadius:
                                          BorderRadius.circular(24.40),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 140,
                                        top: 10,
                                        child: Text(
                                          testNames[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 140,
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
                                        right: 22,
                                        bottom: 10,
                                        child: Text(
                                          '₩ ' + testPrices[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 100,
                                        left: 50,
                                        child: Container(
                                          width: 79,
                                          height: 24.10,
                                          decoration: BoxDecoration(
                                            color: Color(
                                                0xFFF6FEF9), // 버튼의 배경색을 원하는 색상으로 변경
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            // 버튼의 모서리를 둥글게 설정
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors
                                                  .transparent, // 버튼의 배경색을 투명으로 설정
                                              elevation: 0, // 버튼의 그림자를 제거
                                            ),
                                            onPressed: () =>
                                                _openSelectionScreen(index),
                                            child: SizedBox(
                                              width: 65.0, // 버튼의 너비를 지정합니다
                                              height: 15.0, // 버튼의 높이를 지정합니다
                                              child: Center(
                                                child: Text(
                                                  '${_selectedValue[index]}',
                                                  style: TextStyle(
                                                    color: Color(0xFF151921),
                                                    fontSize: 14,
                                                    fontFamily: 'Lato',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        left: 3,
                                        child: Material(
                                          color: Color.fromARGB(
                                              252, 251, 250, 243),
                                          child: Checkbox(
                                            value: _checkboxValues[index],
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _checkboxValues[index] =
                                                    value ?? false;
                                                print("asdf${_checkboxValues}");
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            );
                          }),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 55,
                  top: 595,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          int totalCount = 0;
                          int totalPrice = 0;
                          List<String> selectedProducts = [];
                          for (int i = 0; i < _checkboxValues.length; i++) {
                            if (_checkboxValues[i]) {
                              totalCount += _selectedValue[i];
                              totalPrice +=
                                  _selectedValue[i] * int.parse(testPrices[i]);
                              selectedProducts.add(
                                  '${testNames[i]}: ${_selectedValue[i]}개');
                            }
                          }
                          return AlertDialog(
                            title: Text('주문 정보'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('선택된 상품:'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: selectedProducts
                                      .map((product) => Text(product))
                                      .toList(),
                                ),
                                SizedBox(height: 10),
                                Text('총 개수: $totalCount'),
                                Text('최종 금액: $totalPrice 원'),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('취소'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text('주문 완료'),
                                      content: Text('주문이 완료되었습니다.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('확인'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Text('주문하기'),
                              ),
                            ],
                          );
                        },
                      );
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
                          '결제하기()',
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
