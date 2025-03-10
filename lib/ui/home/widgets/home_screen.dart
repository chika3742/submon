import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:material_symbols_icons/symbols.dart";

import "../../../i18n/strings.g.dart";
import "../../../router/routes.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.navigator});

  final Widget navigator;

  static final List<Widget> _navigationBarDestinations = <Widget>[
    NavigationDestination(
      icon: Icon(Symbols.checklist, grade: 200),
      label: tr.pages.submissions,
    ),
    NavigationDestination(
      icon: Icon(Symbols.task, grade: 200),
      label: tr.pages.digestives,
    ),
    NavigationDestination(
      icon: Icon(Symbols.table_chart, grade: 200),
      label: tr.pages.timetable,
    ),
    NavigationDestination(
      icon: Icon(Symbols.more_horiz, grade: 200),
      label: tr.pages.more,
    ),
  ];

  static final List<GoRoute> _routes = $homeRoute.routes.cast<GoRoute>();

  @override
  Widget build(BuildContext context) {
    final String currentPath = GoRouterState.of(context).uri.path;
    final int currentIndex = _routes.indexWhere((GoRoute e) => e.path == currentPath);

    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: navigator,
            ),
          ),
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: NavigationBar(
              destinations: _navigationBarDestinations,
              selectedIndex: currentIndex,
              onDestinationSelected: (int value) {
                context.go(_routes[value].path);
              },
            ),
          ),
        ],
      ),
    );
  }
}
