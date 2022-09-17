import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/common/values/app_colors.dart';
import 'package:flutter_shopping_app_getx/modules/login/controller/login_controller.dart';
import 'package:flutter_shopping_app_getx/modules/login/view/login_bottomsheet.dart';
import 'package:flutter_shopping_app_getx/modules/profile/view/footer_content.dart';
import 'package:flutter_shopping_app_getx/modules/profile/view/profile_item.dart';
import 'package:flutter_shopping_app_getx/widgets/sp_solid_button.dart';
import 'package:get/get.dart';

class ProfileWithoutLogin extends StatelessWidget {
  ProfileWithoutLogin({super.key});
  final LoginController loginController = Get.put(LoginController());

  final double topContainerheight = 190;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerheight,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: topContainerheight * .58,
                    color: AppColors.doveGray,
                  ),
                  Container(
                    height: topContainerheight * .42,
                    color: AppColors.white,
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  height: 132,
                  width: 132,
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/icons/profile.png",
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 22,
                  left: 168,
                  child: SPSolidButton(
                    text: "LOG IN/SIGN UP",
                    minusWidth: 210,
                    onPressed: () {
                      Get.bottomSheet(LoginBottomsheet());
                    },
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: AppColors.white,
          child: Column(
            children: [
              ProfileItem(
                title: "Orders",
                subtitle: "Check your orders",
                assetName: "grid.png",
                onTap: () {
                  Get.bottomSheet(LoginBottomsheet());
                },
              ),
              ProfileItem(
                title: "Help Center",
                subtitle: "Help regarding your recent purchess",
                assetName: "grid.png",
              ),
              ProfileItem(
                title: "Wishlist",
                subtitle: "Your most loved style",
                assetName: "grid.png",
                isLast: true,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: AppColors.white,
          child: Column(
            children: [
              ProfileItem(
                title: "Scan for coupon",
                assetName: "list.png",
              ),
              ProfileItem(
                title: "Refer & Earn",
                assetName: "list.png",
                isLast: true,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FooterContent(),
        const SizedBox(
          height: 40,
        ),
        Text(
          "${loginController.getLoginModelFinal.message ?? "App Version 0.0.1"}",
          style: Theme.of(context).textTheme.overline,
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
