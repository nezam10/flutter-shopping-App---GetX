import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/common/values/app_colors.dart';
import 'package:flutter_shopping_app_getx/modules/login/view/login_bottomsheet.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: LoginBottomsheet(),
      ),
    );
  }
}
