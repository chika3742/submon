import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:google_fonts/google_fonts.dart";

import "i18n/strings.g.dart";
import "router/routes.dart";
import "ui/core/theme_extension.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Filed a PR to add the default resolver: https://github.com/slang-i18n/slang/pull/289
  // TODO: remove this once the PR is merged and released
  LocaleSettings.setPluralResolver(
    locale: AppLocale.jaJp,
    cardinalResolver: (num n, {String? few, String? many, String? one, String? other, String? two, String? zero}) => other!,
    ordinalResolver: (num n, {String? few, String? many, String? one, String? other, String? two, String? zero}) => other!,
  );
  LocaleSettings.useDeviceLocaleSync();
  runApp(ProviderScope(
    child: const Application(),
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
      theme: _buildBaseTheme(Brightness.light).copyWith(
        extensions: <ThemeExtension<dynamic>>[
          SubmonThemeExtension(
            safeDueTextColor: Colors.green.shade800,
            nearDueTextColor: Colors.orange.shade800,
            overdueTextColor: Colors.red.shade600,
            starColor: Colors.yellow.shade800,
          ),
        ],
      ),
      darkTheme: _buildBaseTheme(Brightness.dark).copyWith(
        extensions: <ThemeExtension<dynamic>>[
          SubmonThemeExtension(
            safeDueTextColor: Colors.green.shade300,
            nearDueTextColor: Colors.orange.shade300,
            overdueTextColor: Colors.red.shade300,
            starColor: Colors.yellow.shade300,
          ),
        ],
      ),
      locale: LocaleSettings.currentLocale.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
    );
  }

  ThemeData _buildBaseTheme(Brightness brightness) {
    final ThemeData baseTheme = ThemeData(
      brightness: brightness,
      colorSchemeSeed: Colors.green,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.murechoTextTheme(baseTheme.textTheme),
    );
  }
}
