import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';

class CustomCardThemeData {
  CustomCardThemeData._();

  static const lightTheme = CardTheme(
    color: myWhite,
    shadowColor: myBlackAA,
    surfaceTintColor: myBlack,
  );
  static const darkTheme = CardTheme(
    elevation: 5.0,
    color: myBlueBackground22,
    surfaceTintColor: myWhite,
  );
}
