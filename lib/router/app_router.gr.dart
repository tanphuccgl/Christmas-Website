// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../feature/gift/pages/gift_page.dart' as _i6;
import '../feature/home/pages/home_page.dart' as _i3;
import '../feature/home/router/home_wrapper_router.dart' as _i2;
import '../feature/introduce/pages/introduce_page.dart' as _i4;
import '../feature/landing/pages/landing_page.dart' as _i1;
import '../feature/memory/pages/memory_page.dart' as _i5;
import '../feature/regards/pages/regards_page.dart' as _i7;

class XRouter extends _i8.RootStackRouter {
  XRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
      );
    },
    HomeWrapperRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeWrapperPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    IntroduceRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.IntroducePage(),
      );
    },
    MemoryRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MemoryPage(),
      );
    },
    GiftRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.GiftPage(),
      );
    },
    RegardsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.RegardsPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/landing',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          LandingRoute.name,
          path: '/landing',
        ),
        _i8.RouteConfig(
          HomeWrapperRoute.name,
          path: '/home',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: HomeWrapperRoute.name,
              children: [
                _i8.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: HomeRoute.name,
                  redirectTo: 'introduce',
                  fullMatch: true,
                ),
                _i8.RouteConfig(
                  IntroduceRoute.name,
                  path: 'introduce',
                  parent: HomeRoute.name,
                ),
                _i8.RouteConfig(
                  MemoryRoute.name,
                  path: 'memory',
                  parent: HomeRoute.name,
                ),
                _i8.RouteConfig(
                  GiftRoute.name,
                  path: 'gift',
                  parent: HomeRoute.name,
                ),
                _i8.RouteConfig(
                  RegardsRoute.name,
                  path: 'regards',
                  parent: HomeRoute.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: HomeRoute.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              '*#redirect',
              path: '*',
              parent: HomeWrapperRoute.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
        _i8.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i8.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/landing',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.HomeWrapperPage]
class HomeWrapperRoute extends _i8.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeWrapperRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeWrapperRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.IntroducePage]
class IntroduceRoute extends _i8.PageRouteInfo<void> {
  const IntroduceRoute()
      : super(
          IntroduceRoute.name,
          path: 'introduce',
        );

  static const String name = 'IntroduceRoute';
}

/// generated route for
/// [_i5.MemoryPage]
class MemoryRoute extends _i8.PageRouteInfo<void> {
  const MemoryRoute()
      : super(
          MemoryRoute.name,
          path: 'memory',
        );

  static const String name = 'MemoryRoute';
}

/// generated route for
/// [_i6.GiftPage]
class GiftRoute extends _i8.PageRouteInfo<void> {
  const GiftRoute()
      : super(
          GiftRoute.name,
          path: 'gift',
        );

  static const String name = 'GiftRoute';
}

/// generated route for
/// [_i7.RegardsPage]
class RegardsRoute extends _i8.PageRouteInfo<void> {
  const RegardsRoute()
      : super(
          RegardsRoute.name,
          path: 'regards',
        );

  static const String name = 'RegardsRoute';
}
