import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';

class CustomElevatedButtonThemeData {
  CustomElevatedButtonThemeData._();

  static final ElevatedButtonThemeData elevatedButtonThemeDataLight =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: myWhite,
          backgroundColor: myOrange,
          disabledBackgroundColor: myGrey,
          disabledForegroundColor: myBlack55,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          textStyle: const TextStyle(
            fontSize: 16,
            color: myWhite,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );

  static final ElevatedButtonThemeData elevatedButtonThemeDataDark =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: myWhite,
          backgroundColor: myOrange,
          disabledBackgroundColor: myGrey22,
          disabledForegroundColor: myGrey,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          textStyle: const TextStyle(
            fontSize: 16,
            color: myWhite,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );
}
