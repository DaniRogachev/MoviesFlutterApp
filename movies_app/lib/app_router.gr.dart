// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:movies_app/feature/get_movie_details_feature/presentation/view/movie_details.dart'
    as _i2;
import 'package:movies_app/feature/list_popular_movies_feature/presentation/view/home_screen.dart'
    as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    MovieDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MovieDetailsScreen(
          key: args.key,
          movieId: args.movieId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MovieDetailsScreen]
class MovieDetailsRoute extends _i3.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    _i4.Key? key,
    required int movieId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(
            key: key,
            movieId: movieId,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static const _i3.PageInfo<MovieDetailsRouteArgs> page =
      _i3.PageInfo<MovieDetailsRouteArgs>(name);
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({
    this.key,
    required this.movieId,
  });

  final _i4.Key? key;

  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, movieId: $movieId}';
  }
}
