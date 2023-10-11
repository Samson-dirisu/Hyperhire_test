import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/shared/utils/app_colors.dart';

class AppTypography {
  static final _instance = AppTypography._internal();

  AppTypography._internal();

  factory AppTypography() => _instance;

  /// Weight 400 regular
  /// Weight 500 medium
  /// Weight 600 Semibold
  /// Weight 700 Bold

  // REGULARS
  static final regular12 = TextStyle(
    color: appColors.grey909DB5,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    fontFamily: 'NotoSans',
  );

  // MEDIUM
  static final medium10 = TextStyle(
    color: appColors.grey909DB5,
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
    fontFamily: 'NotoSans',
  );
  static final medium12 = TextStyle(
    color: appColors.scaffoldColor,
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    fontFamily: 'NotoSans',
  );

  // BOLD
  static final bold16 = TextStyle(
    color: appColors.textColor,
    fontWeight: FontWeight.w700,
    fontSize: 16.sp,
    fontFamily: 'NotoSans',
  );
  static final bold14 = TextStyle(
    color: appColors.textColor,
    fontWeight: FontWeight.w700,
    fontSize: 14.sp,
    fontFamily: 'NotoSans',
    height: 1,
  );
}
