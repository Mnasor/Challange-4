import 'dart:convert';

import 'package:challange_4/const/URL.dart';
import 'package:http/http.dart' as http;

class ApiClass {
  static methodGet() async {
    var url = Uri.https(URLApi, '/fact');
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    print(responseBody);
    return responseBody;
  }
}
