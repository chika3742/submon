import "package:clock/clock.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_symbols_icons/symbols.dart";
import "package:submon/data/models/submissions.dart";
import "package:submon/domain/models/date_time_picker_value.dart";
import "package:submon/i18n/strings.g.dart";
import "package:submon/ui/submissions/widgets/date_time_picker_bottom_sheet.dart";

import "../../utils/create_test_widget.dart";

void main() {
  testWidgets("showDateTimePickerBottomSheet returns selected values", (tester) async {
    await withClock(
      Clock.fixed(DateTime(2025, 1, 1, 12, 0)),
      () async {
        DateTimePickerValue? pickerResult;

        await tester.pumpWidget(createTestWidget(Scaffold(
          body: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () async {
                  pickerResult =
                  await showDateTimePickerBottomSheet(context);
                },
                child: Text("Tap me"),
              );
            },
          ),
        )));

        // show bottom sheet
        await tester.tap(find.text("Tap me"));
        await tester.pumpAndSettle();

        expect(find.byType(DateTimePickerBottomSheet), findsOneWidget);
        expect(find.byType(CalendarDatePicker).hitTestable(),
            findsOneWidget);

        // tap "15" on the calendar and select 2025-01-15
        await tester.tap(
          find.descendant(
            of: find.byType(CalendarDatePicker),
            matching: find.text("15"),
          ),
        );
        await tester.pumpAndSettle();

        // expand time picker and select 12:00 (current time)
        await tester.tap(find.text(tr.dateTimePicker.addTime));
        await tester.pumpAndSettle();
        expect(find.byType(CupertinoDatePicker).hitTestable(),
            findsOneWidget);

        // expand repeat selection and select "weekly"
        await tester.tap(find.text(tr.common.repeat));
        await tester.pumpAndSettle();
        await tester.tap(find.text(tr.repeatTypes["weekly"]!));
        await tester.pumpAndSettle();

        // tap done
        await tester.tap(find.byIcon(Symbols.done));
        await tester.pumpAndSettle();

        // verify the result data
        expect(
          pickerResult,
          DateTimePickerValue(
            dateTime: DateTime(2025, 1, 15, 12, 0),
            respectDateOnly: false,
            repeatType: RepeatType.weekly,
          ),
        );
      },
    );
  });

  testWidgets("DateTimePickerBottomSheet expands each panel on tap", (tester) async {
    await tester.pumpWidget(createTestWidget(Scaffold(
      body: DateTimePickerBottomSheet(),
    )));

    // defaults to date picker
    expect(find.byType(CalendarDatePicker).hitTestable(), findsOneWidget);

    await tester.tap(find.text(tr.dateTimePicker.addTime));
    await tester.pumpAndSettle();

    // expands to time picker
    expect(find.byType(CupertinoDatePicker).hitTestable(), findsOneWidget);
    expect(find.byType(CalendarDatePicker).hitTestable(), findsNothing);

    await tester.tap(find.text(tr.common.repeat));
    await tester.pumpAndSettle();

    // expands to repeat selection
    expect(find.text(tr.repeatTypes["none"]!).hitTestable(), findsOneWidget);
    expect(find.byType(CupertinoDatePicker).hitTestable(), findsNothing);
  });

  testWidgets(
    "DateTimePickerBottomSheet expands date picker when time cleared if time picker is expanded",
    (tester) async {
      await tester.pumpWidget(createTestWidget(Scaffold(
        body: DateTimePickerBottomSheet(),
      )));

      expect(find.byType(CalendarDatePicker), findsOneWidget);

      // expand time picker and add time
      await tester.tap(find.text(tr.dateTimePicker.addTime));
      await tester.pumpAndSettle();

      expect(find.byType(CupertinoDatePicker).hitTestable(), findsOneWidget);
      expect(find.byType(CalendarDatePicker).hitTestable(), findsNothing);

      // clear time
      await tester.tap(find.byIcon(Symbols.clear));
      await tester.pumpAndSettle();

      expect(find.byType(CupertinoDatePicker).hitTestable(), findsNothing);
      expect(find.byType(CalendarDatePicker).hitTestable(), findsOneWidget);
      expect(
        find.text(tr.dateTimePicker.addTime).hitTestable(),
        findsOneWidget,
      );

      // add time and expand repeat selection
      await tester.tap(find.text(tr.dateTimePicker.addTime));
      await tester.pumpAndSettle();
      await tester.tap(find.text(tr.common.repeat));
      await tester.pumpAndSettle();

      // clear time
      await tester.tap(find.byIcon(Symbols.clear));
      await tester.pumpAndSettle();

      expect(find.byType(CupertinoDatePicker).hitTestable(), findsNothing);
      expect(
        find.text(tr.dateTimePicker.addTime).hitTestable(),
        findsOneWidget,
      );
      expect(find.text(tr.repeatTypes["none"]!).hitTestable(), findsOneWidget);
  });

  testWidgets(
    "DateTimePickerBottomSheet repeat tile subtitle is displayed when another panel is expanded",
    (tester) async {
      await tester.pumpWidget(createTestWidget(Scaffold(
        body: DateTimePickerBottomSheet(),
      )));

      // subtitle of repeat ListTile is not displayed
      expect(find.text(tr.repeatTypes["weekly"]!).hitTestable(), findsNothing);

      // select weekly repeat
      await tester.tap(find.text(tr.common.repeat));
      await tester.pumpAndSettle();
      await tester.tap(find.text(tr.repeatTypes["weekly"]!));
      await tester.pumpAndSettle();

      // verify repeat panel is displayed
      expect(
        find.byWidgetPredicate((widget) {
          return widget is ListTile &&
              (widget.title as Text).data == tr.repeatTypes["weekly"];
        }),
        findsOneWidget,
      );
      expect(find.text(tr.repeatTypes["weekly"]!).hitTestable(), findsOneWidget);

      // open another panel
      await tester.tap(find.text(tr.dateTimePicker.addTime));
      await tester.pumpAndSettle();

      expect(find.text(tr.repeatTypes["weekly"]!).hitTestable(), findsOneWidget);
      expect(find.text(tr.repeatTypes["monthly"]!).hitTestable(), findsNothing);
  });
}
