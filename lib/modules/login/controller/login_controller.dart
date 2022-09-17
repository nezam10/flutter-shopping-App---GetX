import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  GetLoginModel getLoginModelFinal = GetLoginModel();
  final client = http.Client();
  final storage = FlutterSecureStorage();

  @override
  void onInit() {
    super.onInit();
  }

  // post api ==== login

  post(var body, String endpoint) async {
    var response = await client.post(buildUrl(endpoint), body: body);
    print("Response body: ${response.body}");
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      var getLoginModel = GetLoginModel.fromJson(result);
      Future.delayed(Duration(seconds: 1));

      Get.snackbar("Success", "${getLoginModel.message}",
          backgroundColor: Colors.blue[200]);
      getLoginModelFinal = getLoginModel;
      print("result================ : $result");
      print("get data :==================${getLoginModel}");
    } else {
      Get.snackbar(
          "Error", "${getLoginModelFinal.message ?? "Enter Email & Password"}",
          backgroundColor: Colors.blue[200]);
    }
  }

  Uri buildUrl(String endpoind) {
    String baseUrl = "https://restaurant.bdtask.com/demo/V1/";
    final apiPath = baseUrl + endpoind;
    return Uri.parse(apiPath);
  }

  void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  Future<String?> getToken(String token) async {
    return await storage.read(key: "token");
  }

  //

  login() {
    LoginModel loginModel = LoginModel(
        email: emailController.text.toString(),
        password: passwordController.text.toString());
    post({"email": emailController.text, "password": passwordController.text},
        "sign_in");
  }
}
