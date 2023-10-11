// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:test_app/features/post_detail/presentation/post_detail_screen.dart'
    as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    PostDetailRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.PostDetailScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.PostDetailScreen]
class PostDetailRoute extends _i2.PageRouteInfo<void> {
  const PostDetailRoute({List<_i2.PageRouteInfo>? children})
      : super(
          PostDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostDetailRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
