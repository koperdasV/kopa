import 'package:flutter/material.dart';

abstract class AppColor {
  static Color backgroundColor = const Color.fromRGBO(30, 30, 30, 1);
  static Color kPrimaryColor = const Color.fromRGBO(12, 205, 230, 1);
  static Color unSelectedItemColor = const Color.fromRGBO(161, 161, 161, 1);
  static Color navBarColor = const Color.fromRGBO(80, 80, 81, 1);
  static Color cardColor = const Color.fromRGBO(52, 52, 52, 1);
  static Color priceColor = const Color.fromRGBO(255, 214, 0, 1);
  static Color dividerColor = const Color.fromRGBO(171, 180, 189, 0.3);
}

abstract class AppPadding {
  static EdgeInsetsGeometry cardPadding =
      const EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 25);
}
