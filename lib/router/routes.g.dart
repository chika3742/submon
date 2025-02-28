// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeRoute];

RouteBase get $homeRoute => ShellRouteData.$route(
  factory: $HomeRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/submissions',

      factory: $SubmissionsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/digestives',

      factory: $DigestivesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/timetable',

      factory: $TimetableRouteExtension._fromState,
    ),
    GoRouteData.$route(path: '/more', factory: $MoreRouteExtension._fromState),
  ],
);

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();
}

extension $SubmissionsRouteExtension on SubmissionsRoute {
  static SubmissionsRoute _fromState(GoRouterState state) => SubmissionsRoute();

  String get location => GoRouteData.$location('/submissions');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DigestivesRouteExtension on DigestivesRoute {
  static DigestivesRoute _fromState(GoRouterState state) => DigestivesRoute();

  String get location => GoRouteData.$location('/digestives');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TimetableRouteExtension on TimetableRoute {
  static TimetableRoute _fromState(GoRouterState state) => TimetableRoute();

  String get location => GoRouteData.$location('/timetable');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MoreRouteExtension on MoreRoute {
  static MoreRoute _fromState(GoRouterState state) => MoreRoute();

  String get location => GoRouteData.$location('/more');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
