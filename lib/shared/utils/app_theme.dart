import 'package:flutter/material.dart';
import 'package:test_app/shared/utils/app_colors.dart';

final baseTheme = ThemeData.light();

final ThemeData apptheme = baseTheme.copyWith(
  scaffoldBackgroundColor: appColors.scaffoldColor,
  primaryColor: appColors.primaryColor,
  useMaterial3: true,
  textTheme: baseTheme.copyWith().textTheme.apply(
        fontFamily: 'NotoSans',
        bodyColor: appColors.textColor,
      ),
);
