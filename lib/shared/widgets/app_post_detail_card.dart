import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/shared/utils/exports.dart';
import 'package:test_app/shared/widgets/exports.dart';

class AppPostDetailCard extends StatelessWidget {
  const AppPostDetailCard({
    super.key,
    required this.showCommentButton,
    required this.showLikeButton,
    required this.title,
    required this.body,
    required this.imageBackgroundColor,
    required this.imageUrl,
    this.isComment = true,
    this.showCheck = true,
    this.subTitle,
    this.titleOfPost,
  });

  final bool isComment;
  final bool showLikeButton;
  final bool showCommentButton;
  final bool showCheck;
  final String title;
  final String body;
  final String imageUrl;
  final Color imageBackgroundColor;
  final String? subTitle;
  final String? titleOfPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: hPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizeBox(height: 12.h),
              AppNameTile(
                title: title,
                subTitle: subTitle,
                imageUrl: imageUrl,
                imageBackgroundColor: imageBackgroundColor,
                isFollow: isComment ? false : true,
                showCheckMark: showCheck,
              ),
              if (titleOfPost != null) ...[
                const AppSizeBox(height: 18),
                // title of post
                Text(
                  titleOfPost!,
                  style: AppTypography.bold14.copyWith(
                    letterSpacing: -0.14,
                  ),
                ),
              ],
              AppSizeBox(height: isComment ? 8 : 16),

              // Detail of post
              Padding(
                padding:
                    isComment ? EdgeInsets.only(left: 44.w) : EdgeInsets.zero,
                child: Text(
                  body,
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: AppTypography.medium12.copyWith(
                    color: appColors.black303A49,
                    letterSpacing: -0.12,
                  ),
                ),
              ),
              if (!isComment) ...[
                const AppSizeBox(height: 16),
                Wrap(
                  spacing: 8.w,
                  runSpacing: 8.w,
                  children: List.generate(
                    chipList.length,
                    (index) {
                      return AppChip(text: chipList[index]);
                    },
                  ),
                ),
              ]
            ],
          ),
        ),

        //Image
        if (!isComment)
          Container(
            height: 450.h,
            margin: EdgeInsets.only(top: 16.h, bottom: 12.h),
            color: appColors.greyECEEF2,
            child: CachedNetworkImage(
              imageUrl:
                  'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
              fit: BoxFit.cover,
            ),
          ),

        // Like, Chat, Bookmark
        AppReactionWidget(
          showBookmarkButton: isComment ? false : true,
          showCommentButton: showCommentButton,
          isComment: isComment,
          likeCount: '5',
          commentCount: '5',
        ),

        // Comment session
      ],
    );
  }
}
