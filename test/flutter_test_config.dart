import "dart:async";

import "package:intl/intl.dart";
import "package:submon/i18n/strings.g.dart";

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  await LocaleSettings.setLocale(AppLocale.enUs);
  Intl.defaultLocale = "en_US";
  await testMain();
}
