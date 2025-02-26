import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:submon/i18n/strings.g.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TranslationProvider(
    child: const Application(),
  ));
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
    );
  }
}
