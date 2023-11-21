import 'package:http/http.dart' as http;
import '../information.dart';

Future<String> sendDataToServer(String info) async {
  final response = await http.get(
    Uri.parse("/${info}"),
  );

  total = response.body.toString();
  print(total);
  return response.body.toString();
}
