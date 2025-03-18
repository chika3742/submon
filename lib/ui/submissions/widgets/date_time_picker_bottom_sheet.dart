import "package:clock/clock.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";
import "package:material_symbols_icons/material_symbols_icons.dart";

import "../../../data/models/submissions.dart";
import "../../../domain/models/date_time_picker_value.dart";
import "../../../i18n/strings.g.dart";
import "../../../utils/to_time_of_day_ext.dart";

class DateTimePickerBottomSheet extends HookWidget {
  const DateTimePickerBottomSheet({super.key, this.initialValue});

  final DateTimePickerValue? initialValue;

  @override
  Widget build(BuildContext context) {
    final expandedPanel = useState(DateTimePickerPanel.date);
    final selectedDateTime = useState(initialValue?.dateTime ?? clock.now());
    final timeAdded = useState(false);
    final selectedRepeatType =
        useState<RepeatType>(initialValue?.repeatType ?? RepeatType.none);

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Date Picker
          _buildDatePicker(
            expand: expandedPanel.value == DateTimePickerPanel.date,
            selectedDateTime: selectedDateTime.value,
            onExpand: () {
              expandedPanel.value = DateTimePickerPanel.date;
            },
            onDateChanged: (value) {
              selectedDateTime.value = selectedDateTime.value.copyWith(
                year: value.year,
                month: value.month,
                day: value.day,
              );
            }
          ),

          Divider(height: 0),

          // Time Picker
          _buildTimePicker(
            expand: expandedPanel.value == DateTimePickerPanel.time,
            selectedDateTime: selectedDateTime.value,
            timeAdded: timeAdded.value,
            onExpand: () {
              timeAdded.value = true;
              expandedPanel.value = DateTimePickerPanel.time;
            },
            onClear: () {
              timeAdded.value = false;
              if (expandedPanel.value == DateTimePickerPanel.time) {
                expandedPanel.value = DateTimePickerPanel.date;
              }
            },
            onTimeChanged: (value) {
              selectedDateTime.value = selectedDateTime.value.copyWith(
                hour: value.hour,
                minute: value.minute,
              );
            }
          ),

          Divider(height: 0),

          // Repeat Type Selector
          _buildRepeatTypeSelector(
            expand: expandedPanel.value == DateTimePickerPanel.repeat,
            selectedRepeatType: selectedRepeatType.value,
            onExpand: () {
              expandedPanel.value = DateTimePickerPanel.repeat;
            },
            onRepeatTypeChanged: (value) {
              selectedRepeatType.value = value;
            },
          ),

          // Done Button
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: OutlinedButton.icon(
                icon: Icon(Symbols.done),
                label: Text(tr.common.done),
                onPressed: () {
                  Navigator.of(context).pop(
                    DateTimePickerValue(
                      dateTime: selectedDateTime.value,
                      respectDateOnly: !timeAdded.value,
                      repeatType: selectedRepeatType.value,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker({
    required bool expand,
    required DateTime selectedDateTime,
    required VoidCallback onExpand,
    required ValueChanged<DateTime> onDateChanged,
  }) {
    return AnimatedCrossFade(
      crossFadeState: expand ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: Duration(milliseconds: 300),
      sizeCurve: Easing.standard,
      firstChild: ListTile(
        title: Text(
          DateFormat.yMMMd().format(selectedDateTime),
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(Symbols.expand_more),
        onTap: onExpand,
      ),
      secondChild: CalendarDatePicker(
        initialDate: selectedDateTime,
        currentDate: clock.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2099),
        onDateChanged: onDateChanged,
      ),
    );
  }

  Widget _buildTimePicker({
    required bool expand,
    required DateTime selectedDateTime,
    required bool timeAdded,
    required VoidCallback onExpand,
    required VoidCallback onClear,
    required ValueChanged<DateTime> onTimeChanged,
  }) {
    final context = useContext();

    return Column(
      children: [
        ListTile(
          title: Text(
            timeAdded
                ? selectedDateTime.toTimeOfDay().format(context)
                : tr.dateTimePicker.addTime,
            style: TextStyle(fontSize: 18),
          ),
          onTap: onExpand,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // clear button
              if (timeAdded)
                IconButton(
                  icon: Icon(Symbols.clear),
                  onPressed: onClear,
                ),
              // expand/add icon
              if (!expand)
                Icon(
                  timeAdded
                      ? Symbols.expand_more
                      : Symbols.add,
                ),
            ],
          ),
        ),
        AnimatedCrossFade(
          crossFadeState: expand ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 300),
          sizeCurve: Easing.standard,
          firstChild: SizedBox.shrink(),
          secondChild: SizedBox(
            height: 200,
            child: CupertinoTheme(
              data: CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                  dateTimePickerTextStyle: GoogleFonts.murecho(),
                ),
              ),
              child: CupertinoDatePicker(
                // Recreate widget when `timeAdded` state changes so that time picker initializes with the current time
                key: ValueKey(timeAdded),
                initialDateTime: selectedDateTime,
                mode: CupertinoDatePickerMode.time,
                use24hFormat: true,
                onDateTimeChanged: onTimeChanged,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRepeatTypeSelector({
    required bool expand,
    required RepeatType selectedRepeatType,
    required VoidCallback onExpand,
    required ValueChanged<RepeatType> onRepeatTypeChanged,
  }) {
    return Column(
      children: [
        ListTile(
          title: Text(tr.common.repeat),
          subtitle: !expand &&
              selectedRepeatType != RepeatType.none
              ? Text(tr.repeatTypes[selectedRepeatType.name]!)
              : null,
          onTap: onExpand,
          trailing: !expand
              ? Icon(Symbols.expand_more)
              : null,
        ),
        AnimatedCrossFade(
          crossFadeState: expand
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 300),
          sizeCurve: Easing.standard,
          firstChild: SizedBox.shrink(),
          secondChild: Column(
            children: [
              for (final type in RepeatType.values)
                ListTile(
                  leading: selectedRepeatType == type
                      ? Icon(Symbols.check)
                      : SizedBox(),
                  title: Text(tr.repeatTypes[type.name]!),
                  selected: selectedRepeatType == type,
                  onTap: () {
                    onRepeatTypeChanged(type);
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}

enum DateTimePickerPanel {
  date,
  time,
  repeat,
}

Future<DateTimePickerValue?> showDateTimePickerBottomSheet(
  BuildContext context, {
  bool useRootNavigator = false,
  DateTimePickerValue? initialValue,
}) async {
  return await showModalBottomSheet<DateTimePickerValue>(
    context: context,
    useRootNavigator: useRootNavigator,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      return DateTimePickerBottomSheet(
        initialValue: initialValue,
      );
    },
  );
}
