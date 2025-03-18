import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:submon/main.dart";

Widget createTestWidget(Widget child) {
  return Application(
    locale: Locale("en", "US"),
    router: GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => child,
        ),
      ],
    ),
  );
}
