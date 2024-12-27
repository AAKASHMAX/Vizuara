import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const SighInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const SighInWidget(),
          routes: [
            FFRoute(
              name: 'SighIn',
              path: 'sighIn',
              builder: (context, params) => const SighInWidget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'home',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Home')
                  : const NavBarPage(
                      initialPage: 'Home',
                      page: HomeWidget(),
                    ),
            ),
            FFRoute(
              name: 'SighUp',
              path: 'sighUp',
              builder: (context, params) => const SighUpWidget(),
            ),
            FFRoute(
              name: 'Classes',
              path: 'classes',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ClassesWidget(),
              ),
            ),
            FFRoute(
              name: 'Class9th',
              path: 'class9th',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Class9thWidget(),
              ),
            ),
            FFRoute(
              name: 'Class9th_Topics',
              path: 'class9thTopics',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class9thTopicsWidget(
                  class9thChapterDetail: params.getParam(
                    'class9thChapterDetail',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Class9th_Topic_detail',
              path: 'class9thTopicDetail',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class9thTopicDetailWidget(
                  class9thChapterDetail: params.getParam(
                    'class9thChapterDetail',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th_English'],
                  ),
                  topicdetail: params.getParam(
                    'topicdetail',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: [
                      'Class9th_English',
                      'Topics9th_English'
                    ],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'DashBoard',
              path: 'dashBoard',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: DashBoardWidget(),
              ),
            ),
            FFRoute(
              name: 'Userdashboard',
              path: 'userdashboard',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Userdashboard')
                  : const NavBarPage(
                      initialPage: 'Userdashboard',
                      page: UserdashboardWidget(),
                    ),
            ),
            FFRoute(
              name: 'Quiz9th',
              path: 'quiz9th',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Quiz9thWidget(
                  class9thChapterDetail: params.getParam(
                    'class9thChapterDetail',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Class9th_Quiz',
              path: 'class9thQuiz',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class9thQuizWidget(
                  class9thref: params.getParam(
                    'class9thref',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Pricing',
              path: 'pricing',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PricingWidget(),
              ),
            ),
            FFRoute(
              name: 'NotificationPage',
              path: 'notificationPage',
              builder: (context, params) => const NotificationPageWidget(),
            ),
            FFRoute(
              name: 'NotificationVideo',
              path: 'notificationVideo',
              builder: (context, params) => NotificationVideoWidget(
                notification: params.getParam(
                  'notification',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Notification'],
                ),
              ),
            ),
            FFRoute(
              name: 'NotificationNotes',
              path: 'notificationNotes',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: NotificationNotesWidget(
                  notification: params.getParam(
                    'notification',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Notification'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'NotificationQPaper',
              path: 'notificationQPaper',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: NotificationQPaperWidget(
                  notification: params.getParam(
                    'notification',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Notification'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Notes',
              path: 'notes',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: NotesWidget(
                  class9thEnglish: params.getParam(
                    'class9thEnglish',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th_English'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Memebership',
              path: 'memebership',
              builder: (context, params) => const MemebershipWidget(),
            ),
            FFRoute(
              name: 'Class9th_Notes',
              path: 'class9thNotes',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class9thNotesWidget(
                  class9th: params.getParam(
                    'class9th',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'test',
              path: 'test',
              builder: (context, params) => const TestWidget(),
            ),
            FFRoute(
              name: 'Class10th',
              path: 'class10th',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Class10thWidget(),
              ),
            ),
            FFRoute(
              name: 'Class9th_Question',
              path: 'class9thQuestion',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class9thQuestionWidget(
                  class9th: params.getParam(
                    'class9th',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class9th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Class10th_Quiz',
              path: 'class10thQuiz',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class10thQuizWidget(
                  class10ref: params.getParam(
                    'class10ref',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class10th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Class10th_Question',
              path: 'class10thQuestion',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class10thQuestionWidget(
                  class10th: params.getParam(
                    'class10th',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class10th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Class10th_Notes',
              path: 'class10thNotes',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class10thNotesWidget(
                  class10th: params.getParam(
                    'class10th',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class10th'],
                  ),
                ),
              ),
            ),
            FFRoute(
              name: 'Class10th_Topics',
              path: 'class10thTopics',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Class10thTopicsWidget(
                  class10thChapterDetail: params.getParam(
                    'class10thChapterDetail',
                    ParamType.DocumentReference,
                    isList: false,
                    collectionNamePath: ['Class10th'],
                  ),
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/sighIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo2Asset_1.png',
                      width: 160.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
