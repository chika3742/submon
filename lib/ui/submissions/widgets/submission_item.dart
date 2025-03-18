import "dart:math";

import "package:clock/clock.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart" show DateFormat;
import "package:material_symbols_icons/symbols.dart";

import "../../core/theme_extension.dart";
import "remaining_time.dart";

class SubmissionItem extends StatelessWidget {
  const SubmissionItem({
    super.key,
    required this.title,
    required this.due,
    this.important = false,
    this.onStarPressed,
    this.onCheckPressed,
    this.onItemPressed,
  });

  final String title;
  final DateTime due;
  final bool important;
  final VoidCallback? onStarPressed;
  final VoidCallback? onCheckPressed;
  final VoidCallback? onItemPressed;

  static const double height = 90.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onItemPressed,
          child: Row(
            children: <Widget>[
              Expanded(
                child: _buildLeft(context),
              ),
              _buildRight(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeft(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildDateLine(context),
        _buildTitleLine(context),
      ],
    );
  }

  Widget _buildDateLine(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildRemainingTime(context),

        SizedBox(width: 8),

        // due date text
        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: "${due.month}/",
                style: TextStyle(fontSize: 16),
              ),
              TextSpan(
                text: due.day.toString(),
                style: TextStyle(fontSize: 20),
              ),
              TextSpan(
                text: DateFormat("(E)").format(due),
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          style: TextStyle(
            color: getDueDateTextColor(context),
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTitleLine(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 12.0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
        maxLines: 1,
        softWrap: false,
        overflow: TextOverflow.fade,
      ),
    );
  }

  Widget _buildRight(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          visualDensity: VisualDensity.comfortable,
          icon: Icon(
            Symbols.star,
            fill: important ? 1 : 0,
            color: important
                ? Theme.of(context).extension<SubmonThemeExtension>()!.starColor
                : null,
          ),
          onPressed: onStarPressed,
        ),
        IconButton(
          visualDensity: VisualDensity.comfortable,
          icon: Icon(Symbols.check),
          onPressed: onCheckPressed,
        ),
      ],
    );
  }

  Widget _buildRemainingTime(BuildContext context) {
    final DateTime now = clock.now();

    return CustomPaint(
      painter: _RemainingTimePainter(
        strokeColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 70),
        child: RemainingTimeWidget(
          duration: due.difference(now),
          inkBorder: _RemainingTimeShapeBorder(),
        ),
      ),
    );
  }

  Color? getDueDateTextColor(BuildContext context) {
    if (due.isBefore(clock.now())) {
      return Theme.of(context).extension<SubmonThemeExtension>()!
          .overdueTextColor;
    }
    return null;
  }
}

class _RemainingTimePainter extends CustomPainter {
  const _RemainingTimePainter({required this.strokeColor});

  final Color strokeColor;

  static const double strokeAngle = pi / 3; // 60 degrees
  static const int strokeWidth = 3;
  static const double verticalInset = 8.0;

  @override
  void paint(Canvas canvas, Size size) {
    final double triangleWidth = (size.height - verticalInset * 2) / tan(strokeAngle);

    final path = Path()
      ..moveTo(
        size.width + (triangleWidth / 2) + (strokeWidth / 2),
        verticalInset,
      )
      ..relativeLineTo(-triangleWidth, size.height - verticalInset * 2)
      ..relativeLineTo(-(strokeWidth * sin(strokeAngle)), 0)
      ..relativeLineTo(triangleWidth, -(size.height - verticalInset * 2))
      ..close();

    final paint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _RemainingTimeShapeBorder extends ShapeBorder {
  final double topLeftBorderRadius = 12.0;

  const _RemainingTimeShapeBorder();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double angle = _RemainingTimePainter.strokeAngle;
    final double rightInset = _RemainingTimePainter.strokeWidth / 2;

    final double triangleWidth = rect.height / tan(angle);

    return Path()
      ..moveTo(rect.width + (triangleWidth / 2) - rightInset, 0)
      ..relativeLineTo(-triangleWidth, rect.height)
      ..lineTo(0, rect.height)
      ..lineTo(0, topLeftBorderRadius)
      ..arcToPoint(
        Offset(topLeftBorderRadius, 0),
        radius: Radius.circular(topLeftBorderRadius),
      )
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
