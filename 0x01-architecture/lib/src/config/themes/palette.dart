import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get material {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
    );
  }

  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
        //backgroundColor: Colors.amber,
      ),
      scaffoldBackgroundColor: Color.fromARGB(255, 183, 19, 19),
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      fontFamily: 'IBM',
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }
}
