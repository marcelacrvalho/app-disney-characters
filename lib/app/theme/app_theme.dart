import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.indigo,
  primaryColor: Colors.purpleAccent,
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.amber,
  dividerColor: Colors.transparent,

  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 22.0,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
    ),
  ),
);