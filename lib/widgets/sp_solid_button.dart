import 'package:flutter/material.dart';

import '../common/values/app_colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.minusWidth});
  final String text;
  final void Function()? onPressed;
  final num minusWidth;

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
          child: Text(
            text,
            style: TextStyle(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
