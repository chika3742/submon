import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";

import "../../../i18n/strings.g.dart";
import "../../../utils/format_duration.dart";
import "../../core/theme_extension.dart";

/// Displays the remaining time for the submission. Tap to switch between
/// displaying in days and in weeks.
class RemainingTimeWidget extends HookWidget {
  const RemainingTimeWidget({
    super.key,
    required this.duration,
    this.inkBorder,
  });

  final Duration duration;
  final ShapeBorder? inkBorder;

  static const int nearDueThresholdDays = 3;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> showInDays = useState(false);
    final FormattedDuration formatted = formatDuration(
      duration,
      forceInDays: showInDays.value,
    );

    return InkWell(
      customBorder: inkBorder,
      onTap: () {
        showInDays.value = !showInDays.value;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        child: Text.rich(
          tr.durationUnit[formatted.unit.name](
            n: formatted.number,
            nBuilder: (num n) => TextSpan(
              text: n.toString(),
              style: TextStyle(fontSize: 24),
            ),
          ),
          style: TextStyle(
            color: getNumberTextColor(context),
            letterSpacing: 1.5,
            fontWeight: getTextFontWeight(),
            fontSize: 16,
          ),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  Color getNumberTextColor(BuildContext context) {
    final SubmonThemeExtension theme = Theme.of(context)
        .extension<SubmonThemeExtension>()!;

    if (duration.isNegative) {
      return theme.overdueTextColor;
    }
    if (duration.inDays <= nearDueThresholdDays) {
      return theme.nearDueTextColor;
    }
    return theme.safeDueTextColor;
  }

  FontWeight getTextFontWeight() {
    if (duration.isNegative || duration.inDays <= nearDueThresholdDays) {
      return FontWeight.bold;
    }
    return FontWeight.normal;
  }
}
