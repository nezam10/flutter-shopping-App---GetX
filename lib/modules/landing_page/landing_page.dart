import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/custom_widgets/sp_icon.dart';
import 'package:flutter_shopping_app_getx/modules/categories/view/categories_screen.dart';
import 'package:flutter_shopping_app_getx/modules/home/view/home_screen.dart';
import 'package:flutter_shopping_app_getx/modules/profile/view/profile_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomeScreen(), CategoriesScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.red,
          selectedLabelStyle: const TextStyle(fontSize: 15),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SpIcon(
                  assetName: "home.png",
                  index: 0,
                  currentIndex: currentIndex,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SpIcon(
                  assetName: "category.png",
                  index: 1,
                  currentIndex: currentIndex,
                ),
                label: "Catagorie"),
            BottomNavigationBarItem(
                icon: SpIcon(
                  assetName: "user.png",
                  index: 2,
                  currentIndex: currentIndex,
                ),
                label: "Account"),
          ]),
      body: pages[currentIndex],
    );
  }
}
