import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/common/values/app_colors.dart';
import 'package:flutter_shopping_app_getx/modules/login/controller/login_controller.dart';
import 'package:flutter_shopping_app_getx/widgets/sp_solid_button.dart';
import 'package:get/get.dart';

class LoginBottomsheet extends StatelessWidget {
  LoginBottomsheet({super.key});

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: AppColors.white,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icons/location.png",
                  height: 35,
                  width: 35,
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.clear,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(height: 35),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " or ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: "Signup",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 43,
              child: TextField(
                controller: loginController.emailController,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  color: AppColors.captionColor,
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 13),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      "+91 |",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.captionColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 43,
              child: TextField(
                controller: loginController.passwordController,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  color: AppColors.captionColor,
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 13),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      "+91 |",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.captionColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "BY continueing, I agree to the",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: " Term of Use",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: " &",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: " Privacy & Policy",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SPSolidButton(
              text: "Continue",
              minusWidth: 0,
              onPressed: loginController.login,
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Having trouble logging in? ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: "Get help ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
