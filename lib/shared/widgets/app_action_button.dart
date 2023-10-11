import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/shared/utils/app_colors.dart';
import 'package:test_app/shared/utils/app_typography.dart';

class AppReactionButton extends StatelessWidget {
  const AppReactionButton({super.key, required this.iconUrl, this.count});
  final String iconUrl;
  final String? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (iconUrl.split('/').last.split('.').last == 'png')
  
          Icon(
            Icons.favorite_outline,
            color: appColors.grey909DB5.withOpacity(.8),
          )
        else
          SvgPicture.asset(
            iconUrl,
            fit: BoxFit.scaleDown,
          ),
        if (count != null) Text(count!, style: AppTypography.regular12)
      ],
    );
  }
}
