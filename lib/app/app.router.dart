// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:stacked/stacked.dart' as _i9;
import 'package:stacked_services/stacked_services.dart' as _i8;

import '../ui/views/chat/chat_view.dart' as _i5;
import '../ui/views/chat_details/chat_details_view.dart' as _i6;
import '../ui/views/mail/mail_view.dart' as _i3;
import '../ui/views/mail_details/mail_details_view.dart' as _i4;
import '../ui/views/main/main_view.dart' as _i2;
import '../ui/views/startup/startup_view.dart' as _i1;
import '../ui/views/unknown/unknown_view.dart' as _i7;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i8.StackedService.navigatorKey);

class StackedRouterWeb extends _i9.RootStackRouter {
  StackedRouterWeb({_i10.GlobalKey<_i10.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MailViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.MailView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MailDetailsViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.MailDetailsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChatViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.ChatView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChatDetailsViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.ChatDetailsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          MainViewRoute.name,
          path: '/main-view',
        ),
        _i9.RouteConfig(
          MailViewRoute.name,
          path: '/mail-view',
        ),
        _i9.RouteConfig(
          MailDetailsViewRoute.name,
          path: '/mail-details-view',
        ),
        _i9.RouteConfig(
          ChatViewRoute.name,
          path: '/chat-view',
        ),
        _i9.RouteConfig(
          ChatDetailsViewRoute.name,
          path: '/chat-details-view',
        ),
        _i9.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i9.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i9.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.MainView]
class MainViewRoute extends _i9.PageRouteInfo<void> {
  const MainViewRoute()
      : super(
          MainViewRoute.name,
          path: '/main-view',
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i3.MailView]
class MailViewRoute extends _i9.PageRouteInfo<void> {
  const MailViewRoute()
      : super(
          MailViewRoute.name,
          path: '/mail-view',
        );

  static const String name = 'MailView';
}

/// generated route for
/// [_i4.MailDetailsView]
class MailDetailsViewRoute extends _i9.PageRouteInfo<void> {
  const MailDetailsViewRoute()
      : super(
          MailDetailsViewRoute.name,
          path: '/mail-details-view',
        );

  static const String name = 'MailDetailsView';
}

/// generated route for
/// [_i5.ChatView]
class ChatViewRoute extends _i9.PageRouteInfo<void> {
  const ChatViewRoute()
      : super(
          ChatViewRoute.name,
          path: '/chat-view',
        );

  static const String name = 'ChatView';
}

/// generated route for
/// [_i6.ChatDetailsView]
class ChatDetailsViewRoute extends _i9.PageRouteInfo<void> {
  const ChatDetailsViewRoute()
      : super(
          ChatDetailsViewRoute.name,
          path: '/chat-details-view',
        );

  static const String name = 'ChatDetailsView';
}

/// generated route for
/// [_i7.UnknownView]
class UnknownViewRoute extends _i9.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

extension RouterStateExtension on _i8.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMainView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMailView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MailViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMailDetailsView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MailDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToChatView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ChatViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToChatDetailsView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ChatDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMailView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MailViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMailDetailsView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MailDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithChatView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ChatViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithChatDetailsView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ChatDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }
}
