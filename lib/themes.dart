import 'package:flutter/material.dart';

class MyThemes {
  ThemeData darkMode = ThemeData(
    accentColor: Colors.pink,
    primaryColor: Colors.pink,
    focusColor: Colors.pink,
    appBarTheme: AppBarTheme(backgroundColor: Colors.pink),
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,
    ),
    fontFamily: 'OpenSans',
  );

  ThemeData lightMode = ThemeData(
    accentColor: Colors.pink,
    primaryColor: Colors.pink,
    focusColor: Colors.pink,
    appBarTheme: AppBarTheme(backgroundColor: Colors.pink),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.pink,
      foregroundColor: Colors.black,
    ),
    fontFamily: 'OpenSans',
  );
}
