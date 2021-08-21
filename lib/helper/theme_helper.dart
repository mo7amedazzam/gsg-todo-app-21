// import 'package:flutter/material.dart';
//
// class ThemeHelper {
//   static ThemeData lightTheme = ThemeData.light().copyWith(
//       primaryColor: Colors.blue,
//       accentColor: Colors.grey,
//       buttonTheme: ButtonThemeData(
//           buttonColor: Colors.green, textTheme: ButtonTextTheme.primary),
//       textTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.blue),
//           bodyText2: TextStyle(color: Colors.black),
//           headline1: TextStyle(color: Colors.blue),
//           headline2: TextStyle(color: Colors.blue)),
//       appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: Colors.white)));
//
//   static ThemeData darkTheme = ThemeData.dark().copyWith(
//       primaryColor: Colors.black,
//       accentColor: Colors.grey,
//       buttonTheme: ButtonThemeData(
//           buttonColor: Colors.orange, textTheme: ButtonTextTheme.primary),
//
//       textTheme: TextTheme(
//           bodyText2: TextStyle(color: Colors.white),
//           headline1: TextStyle(color: Colors.white)));
// }

import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.greenAccent,
      accentColor: Colors.grey,
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.green, textTheme: ButtonTextTheme.primary),
      textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.blue),
          bodyText2: TextStyle(color: Colors.black),
          headline1: TextStyle(color: Colors.blue),
          headline2: TextStyle(color: Colors.blue)),
      appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: Colors.white)));
  static ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.black,
      accentColor: Colors.grey,
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.orange, textTheme: ButtonTextTheme.primary),
      textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
          headline1: TextStyle(color: Colors.white)));
}
