import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/shared/utils/exports.dart';
import 'package:test_app/shared/widgets/exports.dart';

class AppNameTile extends StatelessWidget {
  const AppNameTile({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.imageBackgroundColor,
    this.isFollow = false,
    this.showCheckMark = true,
    this.subTitle,
  });

  final Color imageBackgroundColor;
  final String imageUrl;
  final String title;
  final String? subTitle;
  final bool isFollow;
  final bool showCheckMark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppProfilePicture(
              imageUrl: imageUrl,
              backgroundColor: imageBackgroundColor,
            ),
            const AppSizeBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: AppTypography.bold14),
                    const AppSizeBox(width: 4),
                    if (showCheckMark) ...[
                      SvgPicture.asset(
                        icCheck,
                        width: 15.w,
                      ),
                      const AppSizeBox(width: 4),
                    ],
                    Text('1일전', style: AppTypography.medium10),
                  ],
                ),
                if (subTitle != null)
                  Text(subTitle!, style: AppTypography.regular12)
              ],
            ),
          ],
        ),
        if (isFollow)
          AppTextButton(
            text: AppString.kFollow,
            onTap: () {},
          )
        else
          Icon(
            Icons.more_horiz,
            color: appColors.greyD9D9D9,
          ),
      ],
    );
  }
}
