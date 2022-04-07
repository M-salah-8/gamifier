// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/game/game.dart' as _i8;
import '../games/game_details/game_detail_page.dart' as _i5;
import '../games/game_overview/game_overview_page.dart' as _i4;
import '../sign_in/Sign_in_page.dart' as _i3;
import '../sign_up/sign_up_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    GameOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.GameOverviewPage());
    },
    GameDetailRoute.name: (routeData) {
      final args = routeData.argsAs<GameDetailRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.GameDetailPage(key: args.key, game: args.game));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(GameOverviewRoute.name, path: '/game-overview-page'),
        _i6.RouteConfig(GameDetailRoute.name, path: '/game-detail-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.GameOverviewPage]
class GameOverviewRoute extends _i6.PageRouteInfo<void> {
  const GameOverviewRoute()
      : super(GameOverviewRoute.name, path: '/game-overview-page');

  static const String name = 'GameOverviewRoute';
}

/// generated route for
/// [_i5.GameDetailPage]
class GameDetailRoute extends _i6.PageRouteInfo<GameDetailRouteArgs> {
  GameDetailRoute({_i7.Key? key, required _i8.Game? game})
      : super(GameDetailRoute.name,
            path: '/game-detail-page',
            args: GameDetailRouteArgs(key: key, game: game));

  static const String name = 'GameDetailRoute';
}

class GameDetailRouteArgs {
  const GameDetailRouteArgs({this.key, required this.game});

  final _i7.Key? key;

  final _i8.Game? game;

  @override
  String toString() {
    return 'GameDetailRouteArgs{key: $key, game: $game}';
  }
}
