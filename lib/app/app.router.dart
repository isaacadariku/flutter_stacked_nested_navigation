// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i11;
import 'package:stacked/stacked.dart' as _i10;
import 'package:stacked_services/stacked_services.dart' as _i9;

import '../ui/views/chat/chat_view.dart' as _i7;
import '../ui/views/chat_details/chat_details_view.dart' as _i8;
import '../ui/views/mail/mail_view.dart' as _i5;
import '../ui/views/mail_details/mail_details_view.dart' as _i6;
import '../ui/views/main/main_view.dart' as _i2;
import '../ui/views/startup/startup_view.dart' as _i1;
import '../ui/views/unknown/unknown_view.dart' as _i3;
import 'nested_routers.dart' as _i4;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i9.StackedService.navigatorKey);

class StackedRouterWeb extends _i10.RootStackRouter {
  StackedRouterWeb({_i11.GlobalKey<_i11.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MailNavigationRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.MailNavigation(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChatNavigationRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatNavigation(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MailViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.MailView(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MailDetailsViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MailDetailsViewArgs>(
          orElse: () =>
              MailDetailsViewArgs(mailId: pathParams.getString('mailId')));
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.MailDetailsView(
          args.mailId,
          key: args.key,
        ),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChatViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.ChatView(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChatDetailsViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChatDetailsViewArgs>(
          orElse: () =>
              ChatDetailsViewArgs(chatId: pathParams.getString('chatId')));
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.ChatDetailsView(
          args.chatId,
          key: args.key,
        ),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          MainViewRoute.name,
          path: '/dashboard',
          children: [
            _i10.RouteConfig(
              MailNavigationRoute.name,
              path: 'inbox',
              parent: MainViewRoute.name,
              children: [
                _i10.RouteConfig(
                  MailViewRoute.name,
                  path: '',
                  parent: MailNavigationRoute.name,
                ),
                _i10.RouteConfig(
                  MailDetailsViewRoute.name,
                  path: ':mailId',
                  parent: MailNavigationRoute.name,
                ),
              ],
            ),
            _i10.RouteConfig(
              ChatNavigationRoute.name,
              path: 'chat',
              parent: MainViewRoute.name,
              children: [
                _i10.RouteConfig(
                  ChatViewRoute.name,
                  path: '',
                  parent: ChatNavigationRoute.name,
                ),
                _i10.RouteConfig(
                  ChatDetailsViewRoute.name,
                  path: ':chatId',
                  parent: ChatNavigationRoute.name,
                ),
              ],
            ),
          ],
        ),
        _i10.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i10.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i10.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.MainView]
class MainViewRoute extends _i10.PageRouteInfo<void> {
  const MainViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MainViewRoute.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i3.UnknownView]
class UnknownViewRoute extends _i10.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

/// generated route for
/// [_i4.MailNavigation]
class MailNavigationRoute extends _i10.PageRouteInfo<void> {
  const MailNavigationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MailNavigationRoute.name,
          path: 'inbox',
          initialChildren: children,
        );

  static const String name = 'MailNavigation';
}

/// generated route for
/// [_i4.ChatNavigation]
class ChatNavigationRoute extends _i10.PageRouteInfo<void> {
  const ChatNavigationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ChatNavigationRoute.name,
          path: 'chat',
          initialChildren: children,
        );

  static const String name = 'ChatNavigation';
}

/// generated route for
/// [_i5.MailView]
class MailViewRoute extends _i10.PageRouteInfo<void> {
  const MailViewRoute()
      : super(
          MailViewRoute.name,
          path: '',
        );

  static const String name = 'MailView';
}

/// generated route for
/// [_i6.MailDetailsView]
class MailDetailsViewRoute extends _i10.PageRouteInfo<MailDetailsViewArgs> {
  MailDetailsViewRoute({
    required String mailId,
    _i11.Key? key,
  }) : super(
          MailDetailsViewRoute.name,
          path: ':mailId',
          args: MailDetailsViewArgs(
            mailId: mailId,
            key: key,
          ),
          rawPathParams: {'mailId': mailId},
        );

  static const String name = 'MailDetailsView';
}

class MailDetailsViewArgs {
  const MailDetailsViewArgs({
    required this.mailId,
    this.key,
  });

  final String mailId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'MailDetailsViewArgs{mailId: $mailId, key: $key}';
  }
}

/// generated route for
/// [_i7.ChatView]
class ChatViewRoute extends _i10.PageRouteInfo<void> {
  const ChatViewRoute()
      : super(
          ChatViewRoute.name,
          path: '',
        );

  static const String name = 'ChatView';
}

/// generated route for
/// [_i8.ChatDetailsView]
class ChatDetailsViewRoute extends _i10.PageRouteInfo<ChatDetailsViewArgs> {
  ChatDetailsViewRoute({
    required String chatId,
    _i11.Key? key,
  }) : super(
          ChatDetailsViewRoute.name,
          path: ':chatId',
          args: ChatDetailsViewArgs(
            chatId: chatId,
            key: key,
          ),
          rawPathParams: {'chatId': chatId},
        );

  static const String name = 'ChatDetailsView';
}

class ChatDetailsViewArgs {
  const ChatDetailsViewArgs({
    required this.chatId,
    this.key,
  });

  final String chatId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'ChatDetailsViewArgs{chatId: $chatId, key: $key}';
  }
}

extension RouterStateExtension on _i9.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMainView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMailNavigation(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MailNavigationRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToChatNavigation(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ChatNavigationRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMailView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MailViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMailDetailsView({
    required String mailId,
    _i11.Key? key,
    void Function(_i10.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      MailDetailsViewRoute(
        mailId: mailId,
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToChatView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ChatViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToChatDetailsView({
    required String chatId,
    _i11.Key? key,
    void Function(_i10.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      ChatDetailsViewRoute(
        chatId: chatId,
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMailNavigation(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MailNavigationRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithChatNavigation(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ChatNavigationRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMailView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MailViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMailDetailsView({
    required String mailId,
    _i11.Key? key,
    void Function(_i10.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      MailDetailsViewRoute(
        mailId: mailId,
        key: key,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithChatView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ChatViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithChatDetailsView({
    required String chatId,
    _i11.Key? key,
    void Function(_i10.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      ChatDetailsViewRoute(
        chatId: chatId,
        key: key,
      ),
      onFailure: onFailure,
    );
  }
}
