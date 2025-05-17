import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';

class CustomTextButtonTheme {
  CustomTextButtonTheme._();

  static final lightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: myBlack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
  static final darkTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: myWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
