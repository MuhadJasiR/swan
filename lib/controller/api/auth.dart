import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthenticationService {
  final storage = const FlutterSecureStorage();
  Dio dio = Dio();
  Future auth() async {
    String path =
        "https://swan.alisonsnewdemo.online/api/login?email_phone=8547541134&password=12345678";
    try {
      final result = await dio.post(path);
      final token = result.data["customerdata"]["token"];
      log(token.toString(), name: "token");
      log(result.toString(), name: "auth response");
      await storage.write(key: "token", value: token);
    } catch (e) {
      log(e.toString());
    }
  }
}
