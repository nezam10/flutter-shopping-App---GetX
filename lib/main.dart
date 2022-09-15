import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shopping_app_getx/common/values/strings.dart';
import 'package:flutter_shopping_app_getx/modules/landing_page/landing_page.dart';
import 'package:flutter_shopping_app_getx/routes/get_pages.dart';
import 'package:flutter_shopping_app_getx/routes/route_constant.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        title: Strings.appName,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //initialRoute: RouteConstant.homeScreen,
        getPages: getPages,
        home: LandingPage(),
      ),
    );
  }
}
