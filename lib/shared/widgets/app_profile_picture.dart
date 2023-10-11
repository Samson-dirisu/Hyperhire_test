import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppProfilePicture extends StatelessWidget {
  const AppProfilePicture({
    super.key,
    required this.imageUrl,
    required this.backgroundColor,
  });

  final String imageUrl;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18.w,
      backgroundColor: backgroundColor,
      child: Image.asset(imageUrl),
    );
  }
}
