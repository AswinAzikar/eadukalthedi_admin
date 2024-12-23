import 'package:eadukalthedi_admin/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // inputDecorationTheme: InputDecorationTheme(
      //   contentPadding: const EdgeInsets.symmetric(vertical: 0),
      //   hintStyle: TextStyle(
      //     color: Colors.grey[400],
      //     fontSize: 16,
      //     fontFamily: 'Roboto',
      //   ),
      //   enabledBorder: UnderlineInputBorder(
      //     borderSide: BorderSide(
      //       color: primalColor,
      //       width: 1.5,
      //     ),
      //   ),
      //   focusedBorder: UnderlineInputBorder(
      //     borderSide: BorderSide(
      //       color: primalColor,
      //       width: 1.5,
      //     ),
      //   ),
      // ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      scaffoldBackgroundColor: scaffoldBg,
      textTheme: _textTheme,
    );
  }

  static const TextTheme _textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700, // Bold
      fontSize: 32,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600, // Semi-Bold
      fontSize: 28,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500, // Medium
      fontSize: 20,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400, // Regular
      fontSize: 16,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300, // Light
      fontSize: 14,
      color: Colors.black,
      decoration: TextDecoration.none,
    ),
  );
}
