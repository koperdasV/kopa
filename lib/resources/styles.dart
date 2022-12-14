import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.backgroundColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontSize: 10),
      bodyText1: TextStyle(color: Colors.red, fontSize: 14),
    ),
  );
}

InputDecoration buildDecoration(String lableText) {
  return InputDecoration(
    labelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    labelText: lableText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(171, 180, 189, 0.5),
      ),
    ),
  );
}
