import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/shared/utils/exports.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HapticFeedback.mediumImpact();
        onTap.call();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(12.w, 6.h, 12.w, 6.h),
        decoration: BoxDecoration(
          color: appColors.primaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Text(
          text,
          style: AppTypography.medium12,
        ),
      ),
    );
  }
}
