import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontSize: 10),
      bodyText1: TextStyle(color: Colors.red, fontSize: 14),
    ),
  );
}