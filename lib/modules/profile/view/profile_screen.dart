import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/common/values/app_colors.dart';
import 'package:flutter_shopping_app_getx/modules/profile/view/profile_without_login.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: SingleChildScrollView(
        child: ProfileWithoutLogin(),
      ),
    );
  }
}
