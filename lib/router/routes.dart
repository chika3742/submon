import "dart:async";

import "package:animations/animations.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";

import "../ui/digestives/widgets/digestive_list_screen.dart";
import "../ui/home/widgets/home_screen.dart";
import "../ui/more/widgets/more_screen.dart";
import "../ui/submissions/widgets/submission_list_screen.dart";
import "../ui/timetables/widgets/timetable_screen.dart";

part "routes.g.dart";

@TypedShellRoute<HomeRoute>(routes: <TypedRoute<RouteData>>[
  TypedGoRoute<SubmissionsRoute>(path: "/submissions"),
  TypedGoRoute<DigestivesRoute>(path: "/digestives"),
  TypedGoRoute<TimetableRoute>(path: "/timetable"),
  TypedGoRoute<MoreRoute>(path: "/more"),
])
class HomeRoute extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return HomeScreen(navigator: navigator);
  }
}

class SubmissionsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return _buildNavigationBarScreen(
      restorationId: "submissions",
      child: SubmissionListScreen(),
    );
  }
}

class DigestivesRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return _buildNavigationBarScreen(
      restorationId: "digestives",
      child: DigestiveListScreen(),
    );
  }
}

class TimetableRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return _buildNavigationBarScreen(
      restorationId: "timetable",
      child: TimetableScreen(),
    );
  }
}

class MoreRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return _buildNavigationBarScreen(
      restorationId: "more",
      child: MoreScreen(),
    );
  }
}

Page<void> _buildNavigationBarScreen({
  required Widget child,
  required Object restorationId,
}) {
  return CustomTransitionPage<void>(
    key: ValueKey<Object>(restorationId),
    child: child,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) {
      return FadeThroughTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      );
    },
  );
}
