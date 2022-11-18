import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 글자 테마
TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    headline2: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyText2: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    subtitle1: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 앱바 테마
AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.deepOrangeAccent, // 바탕색
    foregroundColor: Colors.white, // 글자색
    elevation: 0.0, // 그림자 효과 X
    titleTextStyle: textTheme().headline6,
  );
}

BottomNavigationBarThemeData bottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
  );
}

// 전체 테마
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    primaryColor: Colors.orange,
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
