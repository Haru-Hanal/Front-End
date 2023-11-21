import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'login_platform.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'mainPage.dart' as mainPage;
import 'apiRequest.dart' as api;

dynamic nickname;
dynamic email;
dynamic userid;
dynamic condition;
dynamic subscribe;

class SampleScreen extends StatefulWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  LoginPlatform _loginPlatform = LoginPlatform.none;

  void signInWithKakao() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();
      print(1);
      OAuthToken token = isInstalled
          ? await UserApi.instance.loginWithKakaoTalk()
          : await UserApi.instance.loginWithKakaoAccount();
      print(2);
      final url = Uri.https('kapi.kakao.com', '/v2/user/me');
      print(3);
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${token.accessToken}'
        },
      );
      print(4);
      final profileInfo = json.decode(response.body);
      print(profileInfo.toString());
      nickname = profileInfo['kakao_account']['profile']['nickname'];
      email = profileInfo['kakao_account']['email'];

      Fluttertoast.showToast(
        msg: '닉네임: $nickname, 이메일: $email',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[700],
        textColor: Colors.white,
      );

      setState(() {
        _loginPlatform = LoginPlatform.kakao;
      });
      Map<String, dynamic> result = await api.sendLogin(nickname, email);
      userid = result['id'];
      condition = result['condition'];
      subscribe = result['subscribe'];
      print(result);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => mainPage.FigmaToCodeApp(),
        ),
      );
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
      Fluttertoast.showToast(
        // 로그인 성공 시 알림 창을 띄웁니다.
        msg: '${error}',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[700],
        textColor: Colors.white,
      );
    }
  }

  void signOut() async {
    switch (_loginPlatform) {
      case LoginPlatform.kakao:
        await UserApi.instance.logout();
        break;
      case LoginPlatform.none:
        break;
    }

    setState(() {
      _loginPlatform = LoginPlatform.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: 348.04,
      height: 753,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 59,
            top: 207,
            child: Container(
              width: 227,
              height: 207,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login/image 40.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 37,
            top: 456,
            child: SizedBox(
              width: 301,
              height: 88,
              child: Text(
                '하루한알 에서 영양제',
                style: TextStyle(
                  color: Color(0xFF151921),
                  fontSize: 30,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0.04,
                ),
              ),
            ),
          ),
          Positioned(
            left: 37,
            top: 496,
            child: SizedBox(
              width: 301,
              height: 88,
              child: Text(
                '를 추천 받아보세요!',
                style: TextStyle(
                  color: Color(0xFF151921),
                  fontSize: 30,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0.04,
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 68,
            child: Container(
              width: 288,
              height: 107,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login/image 42.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
              left: 53,
              top: 530,
              child: _loginButton(
                'kakao_logo',
                signInWithKakao,
              )),
        ],
      ),
    )));
  }

  Widget _loginButton(String path, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: DecorationImage(
          image: AssetImage('asset/image/$path.png'),
        ),
      ),
      width: 240,
      height: 120,
      child: InkWell(
        onTap: onTap,
      ),
    );
  }
}
