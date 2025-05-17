import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';

class CustomDialogThemeData {
  CustomDialogThemeData._();

  static final lightTheme = DialogTheme(
    backgroundColor: myWhiteAA,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
  static final darkTheme = DialogTheme(
    backgroundColor: myBlueBackground55,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
}
