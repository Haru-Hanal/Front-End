import 'package:flutter/material.dart';
import 'profile/health.dart' as health;
import 'profile/sell.dart' as sell;
import 'profile/bucket.dart' as bucket;
import 'profile/QA.dart' as QA;
import 'profile/review.dart' as review;
import 'bottom.dart' as bottom;

class MenuPage extends StatelessWidget {
  //생성자 부분 쪽에서 서버에 데이터를 요청한다. 이때 text 카테고리에 대한 정보를 받아온다? 이렇게 작성하면 될듯.
  @override
  void navigateToPage(BuildContext context, Widget Page) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => Page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

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

              //메뉴창
              Positioned(
                left: 21.14,
                top: 203.29,
                child: GestureDetector(
                  onTap: () {
                    navigateToPage(context, sell.SellPage());
                  },
                  child: Container(
                    width: containerWidth * 0.88,
                    height: 65.54,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/sell.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 55.50,
                          top: 35.04,
                          child: SizedBox(
                            width: 66.68,
                            child: Text(
                              '주문 내역',
                              style: TextStyle(
                                color: Color(0xFF151921),
                                fontSize: 14.38,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          right: 0,
                          child: Container(
                            height: 1,
                            color: Color.fromARGB(128, 176, 173, 173),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 21.14,
                top: 263.29,
                child: GestureDetector(
                  onTap: () {
                    navigateToPage(context, bucket.BucketPage());
                  },
                  child: Container(
                    width: containerWidth * 0.88,
                    height: 65.54,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/bucket.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 55.50,
                          top: 35.04,
                          child: SizedBox(
                            width: 66.68,
                            child: Text(
                              '장바구니',
                              style: TextStyle(
                                color: Color(0xFF151921),
                                fontSize: 14.38,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          right: 0,
                          child: Container(
                            height: 1,
                            color: Color.fromARGB(128, 176, 173, 173),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21.14,
                top: 323.29,
                child: GestureDetector(
                  onTap: () {
                    navigateToPage(context, health.HealthPage());
                  },
                  child: Container(
                    width: containerWidth * 0.88,
                    height: 65.54,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/health.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 55.50,
                          top: 35.04,
                          child: SizedBox(
                            width: 166.68,
                            child: Text(
                              '나의 건강상태',
                              style: TextStyle(
                                color: Color(0xFF151921),
                                fontSize: 14.38,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          right: 0,
                          child: Container(
                            height: 1,
                            color: Color.fromARGB(128, 176, 173, 173),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21.14,
                top: 383.29,
                child: GestureDetector(
                  onTap: () {
                    navigateToPage(context, QA.QAPage());
                  },
                  child: Container(
                    width: containerWidth * 0.88,
                    height: 65.54,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/QA.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 55.50,
                          top: 35.04,
                          child: SizedBox(
                            width: 66.68,
                            child: Text(
                              'Q & A',
                              style: TextStyle(
                                color: Color(0xFF151921),
                                fontSize: 14.38,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          right: 0,
                          child: Container(
                            height: 1,
                            color: Color.fromARGB(128, 176, 173, 173),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21.14,
                top: 443.29,
                child: GestureDetector(
                  onTap: () {
                    navigateToPage(context, review.reviewPage());
                  },
                  child: Container(
                    width: containerWidth * 0.88,
                    height: 65.54,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/review.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 55.50,
                          top: 35.04,
                          child: SizedBox(
                            width: 66.68,
                            child: Text(
                              '나의 후기',
                              style: TextStyle(
                                color: Color(0xFF151921),
                                fontSize: 14.38,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          right: 0,
                          child: Container(
                            height: 1,
                            color: Color.fromARGB(128, 176, 173, 173),
                          ),
                        ),
                      ],
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
