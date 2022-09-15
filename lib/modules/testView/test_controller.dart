import 'package:get/get.dart';

class TestController extends GetxController {
  final List<Map<String, dynamic>> allPlayers = [
    {"name": "Nezam", "country": "Bangladesh"},
    {"name": "Ismail", "country": "Bangladesh"},
    {"name": "Jamal", "country": "India"},
    {"name": "Kamal", "country": "Rasia"},
    {"name": "Rahim", "country": "India"},
    {"name": "Abdus Samad", "country": "Rasia"},
    {"name": "Abdullah", "country": "US"},
    {"name": "Emon", "country": "US"},
    {"name": "Sakil", "country": "Japan"},
    {"name": "Hasan", "country": "Bangladesh"},
    {"name": "Halim", "country": "Japan"},
  ];

  Rx<List<Map<String, dynamic>>> foundPlayers =
      Rx<List<Map<String, dynamic>>>([]);

  @override
  void onInit() {
    super.onInit();
    foundPlayers.value = allPlayers;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void filterPlayer(String playerName) {
    List<Map<String, dynamic>> results = [];
    if (playerName.isEmpty) {
      results = allPlayers;
    } else {
      results = allPlayers
          .where((element) =>
              (element["name"]
                  .toString()
                  .toLowerCase()
                  .contains(playerName.toLowerCase())) ||
              (element["country"]
                  .toString()
                  .toLowerCase()
                  .contains(playerName.toLowerCase())))
          .toList();
    }
    foundPlayers.value = results;
  }
}
