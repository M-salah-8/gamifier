// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../friends/friends_page.dart' as _i6;
import '../games/game_details/game_detail_page.dart' as _i5;
import '../games/game_overview/game_overview_page.dart' as _i4;
import '../games/misc/game_presentaion_classes.dart' as _i9;
import '../sign_in/Sign_in_page.dart' as _i3;
import '../sign_up/sign_up_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    GameOverviewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.GameOverviewPage());
    },
    GameDetailRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.GameDetailPage());
    },
    FriendsRoute.name: (routeData) {
      final args = routeData.argsAs<FriendsRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.FriendsPage(
              key: args.key,
              addfriendToGame: args.addfriendToGame,
              game: args.game));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i7.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i7.RouteConfig(GameOverviewRoute.name, path: '/game-overview-page'),
        _i7.RouteConfig(GameDetailRoute.name, path: '/game-detail-page'),
        _i7.RouteConfig(FriendsRoute.name, path: '/friends-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.GameOverviewPage]
class GameOverviewRoute extends _i7.PageRouteInfo<void> {
  const GameOverviewRoute()
      : super(GameOverviewRoute.name, path: '/game-overview-page');

  static const String name = 'GameOverviewRoute';
}

/// generated route for
/// [_i5.GameDetailPage]
class GameDetailRoute extends _i7.PageRouteInfo<void> {
  const GameDetailRoute()
      : super(GameDetailRoute.name, path: '/game-detail-page');

  static const String name = 'GameDetailRoute';
}

/// generated route for
/// [_i6.FriendsPage]
class FriendsRoute extends _i7.PageRouteInfo<FriendsRouteArgs> {
  FriendsRoute(
      {_i8.Key? key, required bool addfriendToGame, _i9.GamePrimitive? game})
      : super(FriendsRoute.name,
            path: '/friends-page',
            args: FriendsRouteArgs(
                key: key, addfriendToGame: addfriendToGame, game: game));

  static const String name = 'FriendsRoute';
}

class FriendsRouteArgs {
  const FriendsRouteArgs({this.key, required this.addfriendToGame, this.game});

  final _i8.Key? key;

  final bool addfriendToGame;

  final _i9.GamePrimitive? game;

  @override
  String toString() {
    return 'FriendsRouteArgs{key: $key, addfriendToGame: $addfriendToGame, game: $game}';
  }
}
