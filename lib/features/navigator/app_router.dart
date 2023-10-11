import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_app/features/navigator/app_router.gr.dart';
import 'package:test_app/features/post_detail/presentation/post_detail_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    ...postDetailRoutes
  ];
}

/// route transtions
class TransitionsBuilder {
  /// fade transition
  static Widget fadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // you get an animation object and a widget
    // make your own transition
    return FadeTransition(opacity: animation, child: child);
  }

  /// slide up transition
  static Widget slideUp(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // you get an animation object and a widget
    // make your own transition
    return FadeTransition(opacity: animation, child: child);
  }
}
