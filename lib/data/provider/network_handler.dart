// import 'dart:convert';

// import 'package:flutter_shopping_app_getx/data/models/get_login_model.dart';
// import 'package:flutter_shopping_app_getx/modules/login/controller/login_controller.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class NetworkHandler {
//   static final client = http.Client();
//   static final storage = FlutterSecureStorage();
//   //static GetLoginModel? getLoginModel;
//   LoginController loginController = Get.put(LoginController());

//   static void post(var body, String endpoint) async {
//     var response = await client.post(buildUrl(endpoint), body: body);
//     print("Response body: ${response.body}");
//     if (response.statusCode == 200) {
//       Get.snackbar("success", "success");
//       var result = json.decode(response.body);
//       LoginController.getLoginModel = GetLoginModel.fromJson(result);
//       print("result================ : $result");
//       print("getLoginModel================ : $result");
//     } else {
//       Get.snackbar("Error", "Error");
//     }
//   }

//   static Uri buildUrl(String endpoind) {
//     String baseUrl = "https://restaurant.bdtask.com/demo/V1/";
//     final apiPath = baseUrl + endpoind;
//     return Uri.parse(apiPath);
//   }

//   static void storeToken(String token) async {
//     await storage.write(key: "token", value: token);
//   }

//   static Future<String?> getToken(String token) async {
//     return await storage.read(key: "token");
//   }
// }
