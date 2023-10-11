import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/navigator/app_router.dart';
import 'package:test_app/shared/utils/app_theme.dart';

class TestApp extends StatelessWidget {
  TestApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(350, 700),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Test',
          debugShowCheckedModeBanner: false,
          theme: apptheme,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
