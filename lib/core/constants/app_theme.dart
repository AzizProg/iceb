import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme => ThemeData(
        textTheme: TextTheme(
            titleMedium: TextStyle(
              fontFamily: 'chiralla',
              fontSize: 20,
              color: kColor,
            ),
            bodyLarge: TextStyle(
              fontFamily: 'nova_klasse',
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: kColor,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'nova_klasse',
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: kColor,
            ),
            bodySmall: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: 'nova_klasse',
              fontSize: 16,
              color: kColor,
            ),
            labelLarge: TextStyle(
              fontSize: 14,
              fontFamily: 'poppins',
              color: kColor,
            ),
            labelMedium: TextStyle(
              fontFamily: 'nova_klasse',
              fontSize: 12,
              fontStyle: FontStyle.italic,
              color: kColor,
            ),
            labelSmall: TextStyle(
              fontFamily: 'nova_klasse',
              fontSize: 10,
              fontStyle: FontStyle.italic,
              color: kColor,
            )),
      );

  static Color get kColor => Colors.white;
}
