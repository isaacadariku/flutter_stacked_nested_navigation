import 'package:flutter_stacked_nested_navigation/app/nested_routers.dart';
import 'package:flutter_stacked_nested_navigation/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:flutter_stacked_nested_navigation/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/chat/chat_view.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/chat_details/chat_details_view.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/mail/mail_view.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/mail_details/mail_details_view.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/main/main_view.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/startup/startup_view.dart';
import 'package:flutter_stacked_nested_navigation/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(
      page: MainView,
      children: [
        CustomRoute(
          page: MailNavigation,
          children: [
            CustomRoute(
              page: MailView,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: MailDetailsView,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
        CustomRoute(
          page: ChatNavigation,
          children: [
            CustomRoute(
              page: ChatView,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: ChatDetailsView,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
      ],
    ),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
