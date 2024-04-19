import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/LoginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'MainPage',
          path: '/mainPage',
          builder: (context, params) => MainPageWidget(),
        ),
        FFRoute(
          name: 'Analytics_overview_overview',
          path: '/Analytics_overview_overview',
          builder: (context, params) => AnalyticsOverviewOverviewWidget(),
        ),
        FFRoute(
          name: 'Analytics_overview_approval',
          path: '/Analytics_overview_approval',
          builder: (context, params) => AnalyticsOverviewApprovalWidget(),
        ),
        FFRoute(
          name: 'Analytics_overview_pendings',
          path: '/Analytics_overview_pendings',
          builder: (context, params) => AnalyticsOverviewPendingsWidget(),
        ),
        FFRoute(
          name: 'Analytics_overview_underprocess',
          path: '/Analytics_overview_underprocess',
          builder: (context, params) => AnalyticsOverviewUnderprocessWidget(),
        ),
        FFRoute(
          name: 'Analytics_overview_rejected',
          path: '/Analytics_overview_rejected',
          builder: (context, params) => AnalyticsOverviewRejectedWidget(),
        ),
        FFRoute(
          name: 'Analytics_indents_approval',
          path: '/Analytics_indents_approval',
          builder: (context, params) => AnalyticsIndentsApprovalWidget(),
        ),
        FFRoute(
          name: 'Analytics_indents_overview',
          path: '/Analytics_indents_overview',
          builder: (context, params) => AnalyticsIndentsOverviewWidget(),
        ),
        FFRoute(
          name: 'Analytics_indents_pendings',
          path: '/Analytics_indents_pendings',
          builder: (context, params) => AnalyticsIndentsPendingsWidget(),
        ),
        FFRoute(
          name: 'Analytics_indents_underprocess',
          path: '/Analytics_indents_underprocess',
          builder: (context, params) => AnalyticsIndentsUnderprocessWidget(),
        ),
        FFRoute(
          name: 'Analytics_indents_rejected',
          path: '/Analytics_indents_rejected',
          builder: (context, params) => AnalyticsIndentsRejectedWidget(),
        ),
        FFRoute(
          name: 'Analytics_opensites_overview',
          path: '/Analytics_opensites_overview',
          builder: (context, params) => AnalyticsOpensitesOverviewWidget(),
        ),
        FFRoute(
          name: 'Analytics_opensites_approval',
          path: '/Analytics_opensites_approval',
          builder: (context, params) => AnalyticsOpensitesApprovalWidget(),
        ),
        FFRoute(
          name: 'Analytics_opensites_pendings',
          path: '/Analytics_opensites_pendings',
          builder: (context, params) => AnalyticsOpensitesPendingsWidget(),
        ),
        FFRoute(
          name: 'Analytics_opensites_underprocess',
          path: '/Analytics_opensites_underprocess',
          builder: (context, params) => AnalyticsOpensitesUnderprocessWidget(),
        ),
        FFRoute(
          name: 'Analytics_opensites_rejected',
          path: '/Analytics_opensites_rejected',
          builder: (context, params) => AnalyticsOpensitesRejectedWidget(),
        ),
        FFRoute(
          name: 'Indent_list',
          path: '/indentList',
          builder: (context, params) => IndentListWidget(),
        ),
        FFRoute(
          name: 'Indent_details',
          path: '/indentDetails',
          builder: (context, params) => IndentDetailsWidget(),
        ),
        FFRoute(
          name: 'indent_review_details',
          path: '/indentReviewDetails',
          builder: (context, params) => IndentReviewDetailsWidget(),
        ),
        FFRoute(
          name: 'indent_site_details',
          path: '/indentSiteDetails',
          builder: (context, params) => IndentSiteDetailsWidget(),
        ),
        FFRoute(
          name: 'indent_site_landlord_details',
          path: '/indentSiteLandlordDetails',
          builder: (context, params) => IndentSiteLandlordDetailsWidget(),
        ),
        FFRoute(
          name: 'indent_site_commercial',
          path: '/indentSiteCommercial',
          builder: (context, params) => IndentSiteCommercialWidget(),
        ),
        FFRoute(
          name: 'indent_site_dimensions',
          path: '/indentSiteDimensions',
          builder: (context, params) => IndentSiteDimensionsWidget(),
        ),
        FFRoute(
          name: 'indent_site_photo',
          path: '/indentSitePhoto',
          builder: (context, params) => IndentSitePhotoWidget(),
        ),
        FFRoute(
          name: 'indent_site_nearest_branch',
          path: '/indentSiteNearestBranch',
          builder: (context, params) => IndentSiteNearestBranchWidget(),
        ),
        FFRoute(
          name: 'indent_site_nearest_atm',
          path: '/indentSiteNearestAtm',
          builder: (context, params) => IndentSiteNearestAtmWidget(),
        ),
        FFRoute(
          name: 'indent_site_remark',
          path: '/indentSiteRemark',
          builder: (context, params) => IndentSiteRemarkWidget(),
        ),
        FFRoute(
          name: 'indent_site_comments',
          path: '/indentSiteComments',
          builder: (context, params) => IndentSiteCommentsWidget(),
        ),
        FFRoute(
          name: 'indent_site_review',
          path: '/indentSiteReview',
          builder: (context, params) => IndentSiteReviewWidget(),
        ),
        FFRoute(
          name: 'open_review_details',
          path: '/openReviewDetails',
          builder: (context, params) => OpenReviewDetailsWidget(),
        ),
        FFRoute(
          name: 'open_site_details',
          path: '/openSiteDetails',
          builder: (context, params) => OpenSiteDetailsWidget(),
        ),
        FFRoute(
          name: 'open_site_landlord_details',
          path: '/openSiteLandlordDetails',
          builder: (context, params) => OpenSiteLandlordDetailsWidget(),
        ),
        FFRoute(
          name: 'open_site_commercial',
          path: '/openSiteCommercial',
          builder: (context, params) => OpenSiteCommercialWidget(),
        ),
        FFRoute(
          name: 'open_site_dimensions',
          path: '/openSiteDimensions',
          builder: (context, params) => OpenSiteDimensionsWidget(),
        ),
        FFRoute(
          name: 'open_site_photo',
          path: '/openSitePhoto',
          builder: (context, params) => OpenSitePhotoWidget(),
        ),
        FFRoute(
          name: 'open_site_nearest_branch',
          path: '/openSiteNearestBranch',
          builder: (context, params) => OpenSiteNearestBranchWidget(),
        ),
        FFRoute(
          name: 'open_site_nearest_atm',
          path: '/openSiteNearestAtm',
          builder: (context, params) => OpenSiteNearestAtmWidget(),
        ),
        FFRoute(
          name: 'open_site_remark',
          path: '/openSiteRemark',
          builder: (context, params) => OpenSiteRemarkWidget(),
        ),
        FFRoute(
          name: 'open_site_comments',
          path: '/openSiteComments',
          builder: (context, params) => OpenSiteCommentsWidget(),
        ),
        FFRoute(
          name: 'open_site_review',
          path: '/openSiteReview',
          builder: (context, params) => OpenSiteReviewWidget(),
        ),
        FFRoute(
          name: 'submited_list',
          path: '/submitedList',
          builder: (context, params) => SubmitedListWidget(),
        ),
        FFRoute(
          name: 'draft_list',
          path: '/draftList',
          builder: (context, params) => DraftListWidget(),
        ),
        FFRoute(
          name: 'hold_list',
          path: '/holdList',
          builder: (context, params) => HoldListWidget(),
        ),
        FFRoute(
          name: 'feedback',
          path: '/feedback',
          builder: (context, params) => FeedbackWidget(),
        ),
        FFRoute(
          name: 'notification',
          path: '/notification',
          builder: (context, params) => NotificationWidget(),
        ),
        FFRoute(
          name: 'referal_site_details',
          path: '/referalSiteDetails',
          builder: (context, params) => ReferalSiteDetailsWidget(),
        ),
        FFRoute(
          name: 'referal_survey_details',
          path: '/referalSurveyDetails',
          builder: (context, params) => ReferalSurveyDetailsWidget(),
        ),
        FFRoute(
          name: 'referal_clien_details',
          path: '/referalClienDetails',
          builder: (context, params) => ReferalClienDetailsWidget(),
        ),
        FFRoute(
          name: 'referal_submit',
          path: '/referalSubmit',
          builder: (context, params) => ReferalSubmitWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => ProfileWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
  ]) {
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
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
