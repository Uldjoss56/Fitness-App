import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';

class CustomExpansionTileTheme {
  CustomExpansionTileTheme._();

  static final lightTheme = ExpansionTileThemeData(
    backgroundColor: myWhite22,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );

  static final darkTheme = ExpansionTileThemeData(
    backgroundColor: myBlueBackground55,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
}
