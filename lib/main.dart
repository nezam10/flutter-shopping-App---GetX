import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shopping_app_getx/common/values/app_text_style.dart';
import 'package:flutter_shopping_app_getx/common/values/strings.dart';
import 'package:flutter_shopping_app_getx/modules/landing_page/landing_page.dart';
import 'package:flutter_shopping_app_getx/routes/get_pages.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();

  //await SharedPreferences.getInstance();
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
          textTheme: TextTheme(
            headline6: AppTextStyle.headline6,
            bodyText1: AppTextStyle.body1,
            bodyText2: AppTextStyle.body2,
            caption: AppTextStyle.caption,
          ),
        ),
        //initialRoute: RouteConstant.homeScreen,
        getPages: getPages,
        home: LandingPage(),
      ),
    );
  }
}
