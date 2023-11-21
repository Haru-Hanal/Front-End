import 'package:http/http.dart' as http;
import 'dart:convert';

// Future<void> sendDataToServer(String email) async {
//   final response = await http.get(
//     Uri.parse("http://dbdlswo.pythonanywhere.com/ask/우태경입니다."),
//   );
//   return response;
// }

// post
Future<Map<String, dynamic>> sendLogin(String name, String email) async {
  var data = {'name': name, 'email': email};
  final response = await http.post(
    Uri.parse(
        'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/user/login'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(data),
  );
  String responseBody = response.body;
  Map<String, dynamic> output = json.decode(responseBody);
  int? id = output['id'];
  String? condition = output['condition'];
  int? subscribe = output['subscribe'];
  return {'id': id, 'condition': condition, 'subscribe': subscribe};
}

//Review-post
Future<int> sendReview(int userid, String title, String text) async {
  var data = {"userId": userid, "title": title, 'text': text};
  final response = await http.post(
    Uri.parse(
        'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/reviews/create'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(data),
  );
  print(response.statusCode);
  int test = json.decode(response.body);
  return test as int;
}

//question-post
Future<int> sendQuestion(int userid, String title, String text) async {
  var data = {"userId": userid, "title": title, 'text': text};
  final response = await http.post(
    Uri.parse(
        'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/questions/create'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(data),
  );
  int test = json.decode(response.body);
  return test as int;
}

//get
//review-get
Future<List<List<String>>> getTotalReview() async {
  List<List<String>> result = [];
  final url =
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/reviews/all?page=0&size=10';

  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> content = data['content'];

      for (dynamic item in content) {
        List<String> reviewData = [
          item['id'].toString(),
          item['title'],
          item['text'],
        ];
        result.add(reviewData);
      }

      return result;
    } else {
      print('HTTP GET 요청 실패: ${response.statusCode}');
      return [];
    }
  } catch (e) {
    print('에러 발생: $e');
    return [];
  }
}

Future<String> getCondition(int userid) async {
  final url =
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/user/condition/$userid';

  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body).toString();

      return data;
    } else {
      print('HTTP GET 요청 실패: ${response.statusCode}');
      return '';
    }
  } catch (e) {
    print('에러 발생: $e');
    return '';
  }
}

//userReview-get
Future<List<List<String>>> getUserReview(int userid) async {
  final url =
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/user/reviews/${userid}';

  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> content = data as List<dynamic>;

      List<int> ids = content.map((item) => item['id'] as int).toList();
      List<String> titles =
          content.map((item) => item['title'] as String).toList();
      List<String> texts =
          content.map((item) => item['text'] as String).toList();

      List<String> idsAsString = ids.map((id) => id.toString()).toList();

      return [idsAsString, titles, texts];
    } else {
      print('HTTP GET 요청 실패: ${response.statusCode}');
      return [];
    }
  } catch (e) {
    print('에러 발생: $e');
    return [];
  }
}

//user-quetion-get
Future<List<List<String>>> getUserQuestions(int userid) async {
  final url =
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/user/questions/$userid';

  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> content = data as List<dynamic>;

      List<String> titles =
          content.map((item) => item['title'] as String).toList();
      List<String> texts =
          content.map((item) => item['text'] as String).toList();

      return [titles, texts];
    } else {
      print('HTTP GET 요청 실패: ${response.statusCode}');
      return [];
    }
  } catch (e) {
    print('에러 발생: $e');
    return [];
  }
}

// 사용 예시 get
// String email = 'example@example.com';
// getUserReview(email).then((reviewData) {
//   if (reviewData != null) {
//     print(reviewData);
//   }
// });

//put
//user-condition
Future<int> updateUserCondition(int userid, String condition) async {
  final url = Uri.parse(
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/user/condition/$userid');
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'condition': condition});

  try {
    final response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      print('HTTP PUT 요청 실패: ${response.statusCode}');
      return 202;
    }
  } catch (e) {
    print('에러 발생: $e');
    return 404;
  }
}

//구독-put

Future<int> updateUserSubscribe(int userid, int subscribe) async {
  final url = Uri.parse(
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/user/subscribe/$userid');
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'subscribe': subscribe});

  try {
    final response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      print('HTTP PUT 요청 실패: ${response.statusCode}');
      return 202;
    }
  } catch (e) {
    print('에러 발생: $e');
    return 404;
  }
}

//review-put
Future<int> updateReview(int id, String title, String text) async {
  final url = Uri.parse(
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/reviews/$id');
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'title': title, 'text': text});

  try {
    final response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      print('HTTP PUT 요청 실패: ${response.statusCode}');
      return 202;
    }
  } catch (e) {
    print('에러 발생: $e');
    return 404;
  }
}

// 사용 예시
// String email = 'example@example.com';
// String condition = 'good';
// updateUserCondition(email, condition).then((response) {
//   if (response != null) {
//     print(response);
//   }
// });

//review-delete
Future<int> deleteReview(int reviewId) async {
  final url = Uri.parse(
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/reviews/$reviewId');

  try {
    final response = await http.delete(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      print('HTTP DELETE 요청 실패: ${response.statusCode}');
      return 202;
    }
  } catch (e) {
    print('에러 발생: $e');
    return 404;
  }
}

//question-delete
Future<int> deleteQuestion(int questionId) async {
  final url = Uri.parse(
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/reviews/$questionId');

  try {
    final response = await http.delete(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data as int;
    } else {
      print('HTTP DELETE 요청 실패: ${response.statusCode}');
      return 202;
    }
  } catch (e) {
    print('에러 발생: $e');
    return 404;
  }
}

// 사용 예시
// int reviewId = 12345;
// deleteReview(reviewId).then((response) {
//   if (response != null) {
//     print(response);
//   }
// });

//patch
//question-patch
Future<String> updateQuestion(int questionId, String title, String text) async {
  final url = Uri.parse(
      'http://ec2-13-124-112-56.ap-northeast-2.compute.amazonaws.com:8080/api/v1/reviews/$questionId');
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'title': title, 'text': text});

  try {
    final response = await http.patch(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final data = json.decode(response.body).toString();
      return data;
    } else {
      print('HTTP PATCH 요청 실패: ${response.statusCode}');
      return '';
    }
  } catch (e) {
    print('에러 발생: $e');
    return '';
  }
}

// 사용 예시
// int questionId = 12345;
// Map<String, dynamic> updatedData = {
//   'title': 'Updated Title',
//   'content': 'Updated Content',
// };
// updateReview(questionId, updatedData).then((response) {
//   if (response != null) {
//     print(response);
//   }
// });