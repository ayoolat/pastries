import 'package:flutter/material.dart';

import 'colors.dart';
import 'fonts.dart';

class Theme {
  static const TextStyle text = TextStyle(
    color: Colors.black,
    fontFamily: AppFonts.outfit,
  );

  static final lightTheme = ThemeData(
    primarySwatch: Colors.orange,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    iconTheme: const IconThemeData(color: AppColors.textGrey, size: 20.0),
    textTheme: const TextTheme(
      bodyText1: text,
      bodyText2: text,
      labelMedium: text,
      caption: text,
      button: text,
      overline: text,
    ),
    buttonTheme: const ButtonThemeData(
        padding: EdgeInsets.all(20),
        minWidth: 322.0,
        textTheme: ButtonTextTheme.normal),
  );
}
