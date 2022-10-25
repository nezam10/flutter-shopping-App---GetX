import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/modules/login/controller/login_controller.dart';
import 'package:get/get.dart';

class ShowListViewBuilder extends StatelessWidget {
  ShowListViewBuilder({super.key});

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: loginController.listdata.length,
                itemBuilder: (context, index) {
                  return Obx(
                    () => loginController.isDataLoading.value == true
                        ? CircularProgressIndicator()
                        : ListTile(
                            title: Text(loginController
                                .listdata[index].data!.email
                                .toString()),
                            subtitle: Text("subtitle"),
                          ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
