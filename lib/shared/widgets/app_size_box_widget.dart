import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizeBox extends StatelessWidget {
  const AppSizeBox({super.key, this.height, this.width})
      : assert(width != 0 && height != 0);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    if (width != null) {
      return SizedBox(
        width: width!.w,
      );
    }
    return SizedBox(
      height: height!.h,
    );
  }
}
