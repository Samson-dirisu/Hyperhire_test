import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/shared/utils/exports.dart';
import 'package:test_app/shared/widgets/exports.dart';

@RoutePage()
class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: appColors.primaryColor,
        leading: SvgPicture.asset(
          icArrow,
          fit: BoxFit.scaleDown,
        ),
        centerTitle: true,
        title: AppBarTitle(title: AppString.kTitle),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: hPadding),
            child: SvgPicture.asset(icBell),
          ),
        ],
      ),

      // Body of the screen
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(bottom: 40.h, top: 10),
            child: Column(
              children: [
                AppPostDetailCard(
                  showCommentButton: true,
                  showLikeButton: true,
                  isComment: false,
                  imageBackgroundColor: appColors.yellowFFDCA9,
                  imageUrl: icProfileImageI,
                  title: '안녕 나 응애',
                  subTitle: '165cm . 53kg',
                  titleOfPost: '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                  body:
                      '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~\n혹시 어떤 상품이 제일 괜찮았어? \n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 \n제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가\n아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에\n있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                ),
                const AppSizeBox(height: 12),
                Divider(color: appColors.greyF7F8FA, thickness: 3),
                AppPostDetailCard(
                  showCommentButton: true,
                  showLikeButton: true,
                  imageBackgroundColor: appColors.yellowFFDCA9,
                  imageUrl: icProfileImageI,
                  title: '안녕 나 응애',
                  body:
                      '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 \n우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도\n아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다\n괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니\n꼭 봐주세용~!',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: AppPostDetailCard(
                    showCommentButton: false,
                    showLikeButton: true,
                    showCheck: false,
                    imageBackgroundColor: appColors.pinkFBB0AE,
                    imageUrl: icProfileImage2,
                    title: 'ㅇㅅㅇ',
                    body: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 42,
              padding: EdgeInsets.symmetric(horizontal: hPadding),
              decoration: BoxDecoration(
                color: appColors.scaffoldColor,
                border: Border(
                  top: BorderSide(
                    color: appColors.greyF7F8FA,
                    width: 3,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    icImageIcon,
                  ),
                  const AppSizeBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: AppString.kLeaveAComment,
                        hintStyle: AppTypography.regular12.copyWith(
                          color: appColors.greyAFB8C9,
                        ),
                      ),
                    ),
                  ),
                  const AppSizeBox(width: 16),
                  Text(
                    AppString.kRegistration,
                    style: AppTypography.medium12.copyWith(
                      color: appColors.grey909DB5,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
