import 'package:flutter_shopping_app_getx/modules/categories/binding/categories_binding.dart';
import 'package:flutter_shopping_app_getx/routes/route_constant.dart';
import 'package:get/get.dart';

import '../modules/categories/view/categories_screen.dart';
import '../modules/home/view/home_screen.dart';
import '../modules/profile/view/profile_screen.dart';

List<GetPage> getPages = [
  GetPage(name: RouteConstant.homeScreen, page: () => HomeScreen()),
  GetPage(
    name: RouteConstant.categoriesScreen,
    page: () => CategoriesScreen(),
    binding: CategoriesBinding(),
  ),
  GetPage(name: RouteConstant.profileScreen, page: () => ProfileScreen())
];
