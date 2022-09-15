import 'package:flutter/material.dart';
import 'package:flutter_shopping_app_getx/common/values/app_colors.dart';
import 'package:flutter_shopping_app_getx/common/values/font_size.dart';

abstract class AppTextStyle {
  //headline text styles
  static final TextStyle headline1 = const TextStyle(
    color: AppColors.black,
  ).copyWith(
    fontWeight: FontWeight.w300,
    fontSize: FontSizeRS.fontSize96,
    letterSpacing: -1.5,
  );

  // subtitle text styles
  static final TextStyle subtitle1 = const TextStyle(
    color: AppColors.black,
  ).copyWith(
    fontWeight: FontWeight.w400,
    fontSize: FontSizeRS.fontSize16,
    letterSpacing: 0.15,
  );
  static final TextStyle subtitle2 = const TextStyle(
    color: AppColors.black,
  ).copyWith(
    fontWeight: FontWeight.w500,
    fontSize: FontSizeRS.fontSize14,
    letterSpacing: 0.1,
  );

  // button styles
  static final TextStyle button = const TextStyle(
    color: AppColors.black,
  ).copyWith(
    fontWeight: FontWeight.w500,
    fontSize: FontSizeRS.fontSize14,
    letterSpacing: 1.25,
  );

  // body text style
  static final TextStyle body1 = const TextStyle(
    color: AppColors.black,
  ).copyWith(
      fontWeight: FontWeight.w400,
      fontSize: FontSizeRS.fontSize16,
      letterSpacing: 0.5);

  static final TextStyle body2 = const TextStyle(
    color: AppColors.black,
  ).copyWith(
      fontWeight: FontWeight.w400,
      fontSize: FontSizeRS.fontSize14,
      letterSpacing: 0.25);

  // text theme
  static TextTheme get textTheme => TextTheme(
        headline1: headline1,
        subtitle1: subtitle1,
        subtitle2: subtitle2,
        button: button,
        bodyText1: body1,
        bodyText2: body2,
      );
}
