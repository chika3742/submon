import "package:freezed_annotation/freezed_annotation.dart";

import "../../data/models/submissions.dart";

part "date_time_picker_value.freezed.dart";

@freezed
class DateTimePickerValue with _$DateTimePickerValue {
  const factory DateTimePickerValue({
    required DateTime dateTime,
    required bool respectDateOnly,
    required RepeatType repeatType,
  }) = _DateTimePickerValue;
}
