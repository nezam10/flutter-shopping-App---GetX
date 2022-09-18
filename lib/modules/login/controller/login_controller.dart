import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_shopping_app_getx/data/models/login_model.dart';
import 'package:flutter_shopping_app_getx/data/provider/network_handler.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/get_login_model.dart';
import '../../../main.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var getLoginModelFinal = GetLoginModel().obs;
  final client = http.Client();
  final storage = FlutterSecureStorage();
  var isDataLoading = true.obs;

  //
  var msg = "sdfj".obs;

  @override
  void onInit() {
    isDataLoading(false);
    super.onInit();
    msg.value = prefs.getString("message").toString();
    print("msg value : ==================>>>>>>>> ${msg.value}");
  }

  // post api ==== login

  Future post(var body, String endpoint) async {
    isDataLoading(true);
    var response = await client.post(buildUrl(endpoint), body: body);

    print("Response body: ${response.body}");
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      var getLoginModel = GetLoginModel.fromJson(result);
      Future.delayed(Duration(seconds: 1));
      Get.back();
      Get.snackbar("Success", "${getLoginModel.message}",
          backgroundColor: Colors.blue[200]);
      getLoginModelFinal = getLoginModel.obs;
      await prefs.setString("message", getLoginModel.message.toString());

      isDataLoading(false);

      msg = prefs.getString("message").toString().obs;
      emailController.clear();
      passwordController.clear();

      print("result================ : $result");
      print("get data :==================${getLoginModel}");
    } else {
      Get.snackbar("Error",
          "${getLoginModelFinal.value.message ?? "Enter Email & Password"}",
          backgroundColor: Colors.blue[200]);
      await prefs.setString("message", "email & password not valid");
      msg = prefs.getString("message").toString().obs;
    }
    isDataLoading(false);
  }

  // baseUrl
  Uri buildUrl(String endpoind) {
    String baseUrl = "https://restaurant.bdtask.com/demo/V1/";
    final apiPath = baseUrl + endpoind;
    return Uri.parse(apiPath);
  }

  // storeToken
  void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  Future<String?> getToken(String token) async {
    return await storage.read(key: "token");
  }

  // login method
  login() async {
    LoginModel loginModel = LoginModel(
        email: emailController.text.toString(),
        password: passwordController.text.toString());
    post({"email": emailController.text, "password": passwordController.text},
        "sign_in");
    //msg = prefs.getString("message").toString().obs;
    print("msg value : ==================>>>>>>>> ${msg.value}");
  }
}
