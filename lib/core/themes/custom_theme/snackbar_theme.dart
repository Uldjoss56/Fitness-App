import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';

class CustomSnackBarTheme {
  CustomSnackBarTheme._();

  static const lightTheme = SnackBarThemeData(
    backgroundColor: myWhite,
    contentTextStyle: TextStyle(color: myBlack),
  );
  static const darkTheme = SnackBarThemeData(
    backgroundColor: myBlueBackground,
    contentTextStyle: TextStyle(color: myWhite),
  );
}
