import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

import "i18n/strings.g.dart";
import "router/routes.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
    child: TranslationProvider(
      child: const Application(),
    ),
  ));
}

final GoRouter _router = GoRouter(
  routes: $appRoutes,
  initialLocation: SubmissionsRoute().location,
  redirect: (BuildContext context, GoRouterState state) {
    // redirect root to submission list
    if (state.uri.path == "/") {
      return SubmissionsRoute().location;
    }
    return null;
  },
);

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
    );
  }
}
