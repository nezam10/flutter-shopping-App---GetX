import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/modules/home/view/listview_builder.dart';
import 'package:flutter_shopping_app_getx/routes/route_constant.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("HomeScreen"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteConstant.testScreen);
              },
              child: Text("go to test page"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ShowListViewBuilder());
              },
              child: Text("ListView"),
            ),
          ],
        ),
      ),
    );
  }
}
