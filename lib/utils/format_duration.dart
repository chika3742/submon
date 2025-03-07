class FormattedDuration {
  const FormattedDuration(this.number, this.unit);

  final int number;
  final DurationUnit unit;
}

DurationUnit _getUnit(Duration duration, bool forceInDays) {
  // If `duration` is negative, unit is always `days`.
  if (duration.isNegative) {
    return DurationUnit.days;
  }
  // If `duration` is not negative and less than 1 day, unit is always `hours`.
  if (duration.inDays < 1) {
    return DurationUnit.hours;
  }
  // If `forceInDays` is true, unit is `days`.
  if (forceInDays) {
    return DurationUnit.days;
  }
  if (duration.inDays < 7) {
    return DurationUnit.days;
  } else if (duration.inDays < 30) {
    return DurationUnit.weeks;
  } else {
    return DurationUnit.months;
  }
}

FormattedDuration formatDuration(Duration duration, { bool forceInDays = false }) {
  final DurationUnit unit = _getUnit(duration, forceInDays);
  final int number = switch (unit) {
    DurationUnit.hours => duration.inHours,
    DurationUnit.days => duration.inDays,
    DurationUnit.weeks => duration.inDays ~/ 7,
    DurationUnit.months => duration.inDays ~/ 30,
  };

  return FormattedDuration(number, unit);
}

enum DurationUnit { hours, days, weeks, months }
