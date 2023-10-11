import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/shared/utils/exports.dart';
import 'package:test_app/shared/widgets/exports.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset(
        icArrow,
        fit: BoxFit.scaleDown,
      ),
      centerTitle: true,
      title: AppBarTitle(title: title),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: hPadding),
          child: SvgPicture.asset(icBell),
        ),
      ],
    );
  }
}
