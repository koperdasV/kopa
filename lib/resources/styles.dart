import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColor.kPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.kPrimaryColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontSize: 10),
      bodyText1: TextStyle(color: Colors.red, fontSize: 14),
    ),
  );
}
