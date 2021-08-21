import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_lc_21_todo/helper/theme_helper.dart';

enum MyThemeMode { dark, light }

class ThemeProvider extends ChangeNotifier {
  ThemeData themeData = ThemeHelper.lightTheme;

  setThemeData(MyThemeMode mode) {
    themeData = mode == MyThemeMode.light
        ? ThemeHelper.lightTheme
        : ThemeHelper.darkTheme;
    notifyListeners();
  }
}
