import "package:flutter/material.dart";

extension DateTimeToTimeOfDayExtension on DateTime {
  TimeOfDay toTimeOfDay() {
    return TimeOfDay(hour: hour, minute: minute);
  }
}
