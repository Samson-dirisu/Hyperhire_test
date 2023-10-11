import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/shared/utils/exports.dart';

class AppChip extends StatelessWidget {
  const AppChip({super.key, required this.text,});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.w, 5.h, 12.w, 5.h),
      decoration: BoxDecoration(
        color: appColors.greyF7F8FA,
        border: Border.all(color: appColors.greyCED3DE, width: .5),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        text,
        style: AppTypography.medium12.copyWith(
          color: appColors.grey596A86,
        ),
      ),
    );
  }
}
