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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../presentation/views/landing_view/landing_view.dart' as _i2;
import '../../presentation/views/landing_view/landing_wrapper.dart' as _i1;

class Router extends _i3.RootStackRouter {
  Router([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LandingWrapper.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LandingWrapper(),
      );
    },
    LandingView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LandingView(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/landing',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          LandingWrapper.name,
          path: '/landing',
          children: [
            _i3.RouteConfig(
              LandingView.name,
              path: '',
              parent: LandingWrapper.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LandingWrapper]
class LandingWrapper extends _i3.PageRouteInfo<void> {
  const LandingWrapper({List<_i3.PageRouteInfo>? children})
      : super(
          LandingWrapper.name,
          path: '/landing',
          initialChildren: children,
        );

  static const String name = 'LandingWrapper';
}

/// generated route for
/// [_i2.LandingView]
class LandingView extends _i3.PageRouteInfo<void> {
  const LandingView()
      : super(
          LandingView.name,
          path: '',
        );

  static const String name = 'LandingView';
}
