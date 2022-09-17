import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NetworkHandler {
  static final client = http.Client();
  static final storage = FlutterSecureStorage();

  static void post(var body, String endpoint) async {
    var response = await client.post(buildUrl(endpoint), body: body);
  }

  static Uri buildUrl(String endpoind) {
    String baseUrl = "http://";
    final apiPath = baseUrl + endpoind;
    return Uri.parse(apiPath);
  }

  static void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken(String token) async {
    return await storage.read(key: "token");
  }
}
