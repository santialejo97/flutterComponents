import 'package:flutter/material.dart';

class AppTheme {
  static const colorPrimary = Colors.deepOrange;
  static final themaDefault = ThemeData.dark().copyWith(
      primaryColor: colorPrimary,
      appBarTheme: const AppBarTheme(
        color: colorPrimary,
        elevation: 30,
      ),
      iconTheme: const IconThemeData(color: colorPrimary),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        backgroundColor: colorPrimary,
        foregroundColor: Colors.white,
      )));
}
