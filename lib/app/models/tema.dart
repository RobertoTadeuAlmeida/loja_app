import 'package:flutter/material.dart';

ThemeData tema = ThemeData(
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blueGrey,
  ),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'MontserrartAlternates',
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.blueGrey,
    labelTextStyle: MaterialStateProperty.all(
      TextStyle(
        fontFamily: 'MontserratAlternates',
        color: Colors.white,
      ),
    ),
  iconTheme: MaterialStatePropertyAll(IconThemeData(color: Colors.white))),
);
