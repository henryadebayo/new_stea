import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stea/core/utils/constants.dart';

class SendTestimonyService {
  Future<bool> sendTes(String name, details) async {
    try {
      final Map<String, dynamic> tdata = {
        "name": name,
        "details": details,
      };
      http.Response response = await http.post(
          Uri.parse(Constants.testimonyBaseUrl),
          body: json.encode(tdata));
      print(response.statusCode);
      print(response.body);
      return Future.value(true);
    } catch (e) {
      print("connection error $e");
      return Future.value(false);
    }
  }
}
