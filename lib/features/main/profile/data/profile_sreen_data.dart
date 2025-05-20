import 'dart:math';

import 'package:fitness_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

final settingData = [
  {
    "leading": Icon(Icons.hourglass_empty_rounded, size: 25),
    "label": "Intermittent Fasting",
    "note": "",
    "url": "",
  },
  {
    "leading": Transform.rotate(
      angle: 0.7 * pi,
      child: Icon(Icons.brightness_2_outlined, size: 25),
    ),
    "label": "Sleep",
    "note": "",
    "url": "",
  },
  {
    "leading": ColorFiltered(
      colorFilter: ColorFilter.mode(myWhite, BlendMode.srcIn),
      child: Image.asset(
        "assets/imgs/icons/blood_drop.png",
        width: 25,
        height: 25,
      ),
    ),
    "label": "Glucose",
    "note": "",
    "url": "",
  },
  {
    "leading": ColorFiltered(
      colorFilter: ColorFilter.mode(myWhite, BlendMode.srcIn),
      child: Image.asset("assets/imgs/icons/report.png", width: 25, height: 25),
    ),
    "label": "Weekly Report",
    "note": "",
    "url": "",
  },
  {
    "leading": ColorFiltered(
      colorFilter: ColorFilter.mode(myWhite, BlendMode.srcIn),
      child: Image.asset(
        "assets/imgs/icons/language.png",
        width: 25,
        height: 25,
      ),
    ),
    "label": "Language",
    "note": "English (US)",
    "url": "",
  },
];
