import 'dart:convert';

import 'package:home_page/api/result.dart';
import 'package:http/http.dart';

Future<Result> login(num, password) async {
  final url = "https://api.tracebox.com.br/dev/http/users/login";
  final response = await post(Uri.parse(url),
      body: jsonEncode({"mobilePhone": num, "password": password, "type": "mob"}));

  print(response.body);
  return Result.fromJson(jsonDecode(response.body));
}
