import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_shopping_app_getx/data/models/login_model.dart';
import 'package:flutter_shopping_app_getx/data/provider/network_handler.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/get_login_model.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GetLoginModel? getLoginModel;
  static final client = http.Client();
  static final storage = FlutterSecureStorage();

  @override
  void onInit() {
    super.onInit();
  }

  //

  static void post(var body, String endpoint) async {
    var response = await client.post(buildUrl(endpoint), body: body);
    print("Response body: ${response.body}");
    if (response.statusCode == 200) {
      Get.snackbar("success", "success");
      var result = json.decode(response.body);
      var getLoginModel = GetLoginModel.fromJson(result);
      print("result================ : $result");
      print("getLoginModel================ : $result");
      print("get data :==================${getLoginModel.message}");
    } else {
      Get.snackbar("Error", "Error");
    }
  }

  static Uri buildUrl(String endpoind) {
    String baseUrl = "https://restaurant.bdtask.com/demo/V1/";
    final apiPath = baseUrl + endpoind;
    return Uri.parse(apiPath);
  }

  static void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken(String token) async {
    return await storage.read(key: "token");
  }

  //

  void login() {
    LoginModel loginModel = LoginModel(
        email: emailController.text.toString(),
        password: passwordController.text.toString());
    LoginController.post(
        {"email": emailController.text, "password": passwordController.text},
        "sign_in");
  }
}
