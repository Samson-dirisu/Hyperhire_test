import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/shared/utils/exports.dart';
import 'package:test_app/shared/widgets/exports.dart';

class AppReactionWidget extends StatelessWidget {
  const AppReactionWidget({
    super.key,
    required this.showBookmarkButton,
    required this.showCommentButton,
    this.isComment = true,
    this.commentCount,
    this.likeCount,
  });

  final String? likeCount;
  final String? commentCount;
  final bool showCommentButton;
  final bool isComment;
  final bool showBookmarkButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: isComment ? 54.w : hPadding - 7),
      child: Row(
        children: [
          isComment && !showCommentButton
              ? const AppSizeBox(height: 35)
              : const SizedBox.shrink(),
          AppReactionButton(iconUrl: icHeartPng, count: '5'),
          if (showCommentButton) ...[
            const AppSizeBox(width: 8),
            AppReactionButton(iconUrl: icChat, count: '5'),
          ],
          if (showBookmarkButton) ...[
            const AppSizeBox(width: 8),
            AppReactionButton(
              iconUrl: icBookMark,
            ),
            const AppSizeBox(width: 10),
            Icon(
              Icons.more_horiz,
              color: appColors.greyD9D9D9,
            ),
          ],
        ],
      ),
    );
  }
}
