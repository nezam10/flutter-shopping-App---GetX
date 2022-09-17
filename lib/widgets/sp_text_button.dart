import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/common/values/app_colors.dart';

class SPTextButton extends StatelessWidget {
  const SPTextButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
