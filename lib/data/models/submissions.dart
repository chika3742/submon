import "package:clock/clock.dart" show clock;
import "package:drift/drift.dart";

import "type_converters.dart";

class Submissions extends Table {
  /// Unique ID of the row. This corresponds to the document ID on Cloud Firestore.
  TextColumn get id => text()();

  /// Title of the submission.
  TextColumn get title => text()();

  /// Detail text of the submission.
  TextColumn get details => text()();

  /// Raw due datetime of the submission.
  DateTimeColumn get due => dateTime()
      // constrain to 23:59 if dueDateOnly is true
      .check(dueDateOnly.isValue(false) | (due.hour.isValue(23) & due.minute.isValue(59)))();

  /// If true, the user only cares about the due date, not the time.
  BoolColumn get dueDateOnly => boolean()();

  /// Whether the submission is marked as done.
  BoolColumn get done => boolean().withDefault(Constant(false))();

  /// Whether the submission is marked as important.
  BoolColumn get important => boolean().withDefault(Constant(false))();

  /// Repeat type of the submission.
  IntColumn get repeat =>
      intEnum<RepeatType>().withDefault(Constant<int>(RepeatType.none.index))();

  /// Theme color of the submission.
  IntColumn get color => integer().map(ColorConverter()).nullable()();

  /// Task ID of the task created on Google Tasks.
  TextColumn get googleTasksTaskId => text().nullable()();

  /// Whether the submission has a repeat submission created.
  BoolColumn get repeatSubmissionCreated => boolean().nullable()();

  DateTimeColumn get createdAt => dateTime().clientDefault(() => clock.now())();

  DateTimeColumn get updatedAt => dateTime().clientDefault(() => clock.now())();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

enum RepeatType { none, weekly, monthly }
