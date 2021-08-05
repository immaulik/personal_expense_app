import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBulishColor,
      accentColor: darkBulishColor,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
              )));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBulishColor = Color(0xff403b58);
  static Color lightBulishColor = Vx.indigo400;
  static Color darkCreamColor = Vx.gray900;
}
