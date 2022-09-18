import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/modules/login/controller/login_controller.dart';
import 'package:get/get.dart';

import '../common/values/app_colors.dart';

class SPSolidButton extends StatelessWidget {
  SPSolidButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.minusWidth,
    required this.widget,
  });
  final String text;
  final void Function()? onPressed;
  final num minusWidth;
  final Widget? widget;

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(AppColors.red),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width - minusWidth,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: AppColors.white),
              ),
              Container(
                child: widget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
