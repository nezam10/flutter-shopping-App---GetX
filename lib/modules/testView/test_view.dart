import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/modules/testView/test_controller.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TestController testController = Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Test Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) => testController.filterPlayer(value),
              decoration: const InputDecoration(
                labelText: "Search",
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: testController.foundPlayers.value.length,
                  //itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          testController.foundPlayers.value[index]["name"]),
                      subtitle: Text(
                          testController.foundPlayers.value[index]["country"]),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
