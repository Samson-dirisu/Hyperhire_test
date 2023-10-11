import 'package:flutter/material.dart';
import 'package:test_app/shared/utils/exports.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        title,
        style: AppTypography.bold16,
      ),
    );
  }
}
