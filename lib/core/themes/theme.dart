import 'package:fitness_app/core/themes/custom_theme/app_bar_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/bottom_nav_bar_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/card_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/dialod_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/drawer_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/expansion_tile_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/floating_action_buttom_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/text_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/constants/colors.dart';
import 'package:fitness_app/core/themes/custom_theme/eleveted_button_themr.dart';
import 'package:fitness_app/core/themes/custom_theme/icon_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/snackbar_theme.dart';
import 'package:fitness_app/core/themes/custom_theme/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static final instance = CustomAppTheme._();

  final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(primary: myOrange),
    scaffoldBackgroundColor: myWhiteBackground,
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Manrope',
    textTheme: CustomTextTheme.textThemeLight,
    elevatedButtonTheme:
        CustomElevatedButtonThemeData.elevatedButtonThemeDataLight,
    iconTheme: CustomIconThemeData.lightTheme,
    snackBarTheme: CustomSnackBarTheme.lightTheme,
    cardTheme: CustomCardThemeData.lightTheme,
    appBarTheme: CustomAppBarThemeData.lightTheme,
    floatingActionButtonTheme: CustomFloatingActionButtonTheme.lightTheme,
    dialogTheme: CustomDialogThemeData.lightTheme,
    textButtonTheme: CustomTextButtonTheme.lightTheme,
    bottomNavigationBarTheme: CustomBottomNavBarThemeData.lightTheme,
    bottomSheetTheme: CustomBottomSheetThemeData.lightTheme,
    drawerTheme: CustomDrawerThemeData.lightTheme,
    expansionTileTheme: CustomExpansionTileTheme.lightTheme,
  );

  final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(primary: myOrange),
    scaffoldBackgroundColor: myBlueBackground,
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Manrope',
    textTheme: CustomTextTheme.textThemeDark,
    elevatedButtonTheme:
        CustomElevatedButtonThemeData.elevatedButtonThemeDataDark,
    iconTheme: CustomIconThemeData.darkTheme,
    snackBarTheme: CustomSnackBarTheme.darkTheme,
    cardTheme: CustomCardThemeData.darkTheme,
    appBarTheme: CustomAppBarThemeData.darkTheme,
    floatingActionButtonTheme: CustomFloatingActionButtonTheme.darkTheme,
    dialogTheme: CustomDialogThemeData.darkTheme,
    textButtonTheme: CustomTextButtonTheme.darkTheme,
    bottomNavigationBarTheme: CustomBottomNavBarThemeData.darkTheme,
    bottomSheetTheme: CustomBottomSheetThemeData.darkTheme,
    drawerTheme: CustomDrawerThemeData.darkTheme,
    expansionTileTheme: CustomExpansionTileTheme.darkTheme,
  );

  bool checkDarkMode(BuildContext context, ThemeMode themeMode) {
    bool isDarkMode = false;
    if (themeMode.index == 0) {
      final brightness = MediaQuery.of(context).platformBrightness;
      if (brightness == Brightness.dark) {
        isDarkMode = true;
      } else {
        isDarkMode = false;
      }
    } else if (themeMode.index == 1) {
      isDarkMode = false;
    } else {
      isDarkMode = true;
    }
    return isDarkMode;
    /*
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? true
        : false;
    */
  }
}
