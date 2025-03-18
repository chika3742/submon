// dart format width=80
// ignore_for_file: type=lint
import 'dart:ui' as i3;

import 'package:clock/src/default.dart' as i5;
import 'package:drift/drift.dart' as i0;
import 'package:drift/src/runtime/query_builder/query_builder.dart' as i4;
import 'package:submon/data/models/submissions.dart' as i2;
import 'package:submon/data/models/submissions.drift.dart' as i1;
import 'package:submon/data/models/type_converters.dart' as i6;

typedef $$SubmissionsTableCreateCompanionBuilder =
    i1.SubmissionsCompanion Function({
      required String id,
      required String title,
      required String details,
      required DateTime due,
      required bool dueDateOnly,
      i0.Value<bool> done,
      i0.Value<bool> important,
      i0.Value<i2.RepeatType> repeat,
      i0.Value<i3.Color?> color,
      i0.Value<String?> googleTasksTaskId,
      i0.Value<bool?> repeatSubmissionCreated,
      i0.Value<DateTime> createdAt,
      i0.Value<DateTime> updatedAt,
      i0.Value<int> rowid,
    });
typedef $$SubmissionsTableUpdateCompanionBuilder =
    i1.SubmissionsCompanion Function({
      i0.Value<String> id,
      i0.Value<String> title,
      i0.Value<String> details,
      i0.Value<DateTime> due,
      i0.Value<bool> dueDateOnly,
      i0.Value<bool> done,
      i0.Value<bool> important,
      i0.Value<i2.RepeatType> repeat,
      i0.Value<i3.Color?> color,
      i0.Value<String?> googleTasksTaskId,
      i0.Value<bool?> repeatSubmissionCreated,
      i0.Value<DateTime> createdAt,
      i0.Value<DateTime> updatedAt,
      i0.Value<int> rowid,
    });

class $$SubmissionsTableFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SubmissionsTable> {
  $$SubmissionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<DateTime> get due => $composableBuilder(
    column: $table.due,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<bool> get dueDateOnly => $composableBuilder(
    column: $table.dueDateOnly,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<bool> get important => $composableBuilder(
    column: $table.important,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnWithTypeConverterFilters<i2.RepeatType, i2.RepeatType, int>
  get repeat => $composableBuilder(
    column: $table.repeat,
    builder: (column) => i0.ColumnWithTypeConverterFilters(column),
  );

  i0.ColumnWithTypeConverterFilters<i3.Color?, i3.Color, int> get color =>
      $composableBuilder(
        column: $table.color,
        builder: (column) => i0.ColumnWithTypeConverterFilters(column),
      );

  i0.ColumnFilters<String> get googleTasksTaskId => $composableBuilder(
    column: $table.googleTasksTaskId,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<bool> get repeatSubmissionCreated => $composableBuilder(
    column: $table.repeatSubmissionCreated,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => i0.ColumnFilters(column),
  );
}

class $$SubmissionsTableOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SubmissionsTable> {
  $$SubmissionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get due => $composableBuilder(
    column: $table.due,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<bool> get dueDateOnly => $composableBuilder(
    column: $table.dueDateOnly,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<bool> get important => $composableBuilder(
    column: $table.important,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get repeat => $composableBuilder(
    column: $table.repeat,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get googleTasksTaskId => $composableBuilder(
    column: $table.googleTasksTaskId,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<bool> get repeatSubmissionCreated => $composableBuilder(
    column: $table.repeatSubmissionCreated,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => i0.ColumnOrderings(column),
  );
}

class $$SubmissionsTableAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SubmissionsTable> {
  $$SubmissionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  i0.GeneratedColumn<String> get details =>
      $composableBuilder(column: $table.details, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get due =>
      $composableBuilder(column: $table.due, builder: (column) => column);

  i0.GeneratedColumn<bool> get dueDateOnly => $composableBuilder(
    column: $table.dueDateOnly,
    builder: (column) => column,
  );

  i0.GeneratedColumn<bool> get done =>
      $composableBuilder(column: $table.done, builder: (column) => column);

  i0.GeneratedColumn<bool> get important =>
      $composableBuilder(column: $table.important, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<i2.RepeatType, int> get repeat =>
      $composableBuilder(column: $table.repeat, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<i3.Color?, int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  i0.GeneratedColumn<String> get googleTasksTaskId => $composableBuilder(
    column: $table.googleTasksTaskId,
    builder: (column) => column,
  );

  i0.GeneratedColumn<bool> get repeatSubmissionCreated => $composableBuilder(
    column: $table.repeatSubmissionCreated,
    builder: (column) => column,
  );

  i0.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$SubmissionsTableTableManager
    extends
        i0.RootTableManager<
          i0.GeneratedDatabase,
          i1.$SubmissionsTable,
          i1.Submission,
          i1.$$SubmissionsTableFilterComposer,
          i1.$$SubmissionsTableOrderingComposer,
          i1.$$SubmissionsTableAnnotationComposer,
          $$SubmissionsTableCreateCompanionBuilder,
          $$SubmissionsTableUpdateCompanionBuilder,
          (
            i1.Submission,
            i0.BaseReferences<
              i0.GeneratedDatabase,
              i1.$SubmissionsTable,
              i1.Submission
            >,
          ),
          i1.Submission,
          i0.PrefetchHooks Function()
        > {
  $$SubmissionsTableTableManager(
    i0.GeneratedDatabase db,
    i1.$SubmissionsTable table,
  ) : super(
        i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => i1.$$SubmissionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () =>
                  i1.$$SubmissionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => i1.$$SubmissionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                i0.Value<String> id = const i0.Value.absent(),
                i0.Value<String> title = const i0.Value.absent(),
                i0.Value<String> details = const i0.Value.absent(),
                i0.Value<DateTime> due = const i0.Value.absent(),
                i0.Value<bool> dueDateOnly = const i0.Value.absent(),
                i0.Value<bool> done = const i0.Value.absent(),
                i0.Value<bool> important = const i0.Value.absent(),
                i0.Value<i2.RepeatType> repeat = const i0.Value.absent(),
                i0.Value<i3.Color?> color = const i0.Value.absent(),
                i0.Value<String?> googleTasksTaskId = const i0.Value.absent(),
                i0.Value<bool?> repeatSubmissionCreated =
                    const i0.Value.absent(),
                i0.Value<DateTime> createdAt = const i0.Value.absent(),
                i0.Value<DateTime> updatedAt = const i0.Value.absent(),
                i0.Value<int> rowid = const i0.Value.absent(),
              }) => i1.SubmissionsCompanion(
                id: id,
                title: title,
                details: details,
                due: due,
                dueDateOnly: dueDateOnly,
                done: done,
                important: important,
                repeat: repeat,
                color: color,
                googleTasksTaskId: googleTasksTaskId,
                repeatSubmissionCreated: repeatSubmissionCreated,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String details,
                required DateTime due,
                required bool dueDateOnly,
                i0.Value<bool> done = const i0.Value.absent(),
                i0.Value<bool> important = const i0.Value.absent(),
                i0.Value<i2.RepeatType> repeat = const i0.Value.absent(),
                i0.Value<i3.Color?> color = const i0.Value.absent(),
                i0.Value<String?> googleTasksTaskId = const i0.Value.absent(),
                i0.Value<bool?> repeatSubmissionCreated =
                    const i0.Value.absent(),
                i0.Value<DateTime> createdAt = const i0.Value.absent(),
                i0.Value<DateTime> updatedAt = const i0.Value.absent(),
                i0.Value<int> rowid = const i0.Value.absent(),
              }) => i1.SubmissionsCompanion.insert(
                id: id,
                title: title,
                details: details,
                due: due,
                dueDateOnly: dueDateOnly,
                done: done,
                important: important,
                repeat: repeat,
                color: color,
                googleTasksTaskId: googleTasksTaskId,
                repeatSubmissionCreated: repeatSubmissionCreated,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          i0.BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SubmissionsTableProcessedTableManager =
    i0.ProcessedTableManager<
      i0.GeneratedDatabase,
      i1.$SubmissionsTable,
      i1.Submission,
      i1.$$SubmissionsTableFilterComposer,
      i1.$$SubmissionsTableOrderingComposer,
      i1.$$SubmissionsTableAnnotationComposer,
      $$SubmissionsTableCreateCompanionBuilder,
      $$SubmissionsTableUpdateCompanionBuilder,
      (
        i1.Submission,
        i0.BaseReferences<
          i0.GeneratedDatabase,
          i1.$SubmissionsTable,
          i1.Submission
        >,
      ),
      i1.Submission,
      i0.PrefetchHooks Function()
    >;

class $SubmissionsTable extends i2.Submissions
    with i0.TableInfo<$SubmissionsTable, i1.Submission> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubmissionsTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<String> id = i0.GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _titleMeta = const i0.VerificationMeta(
    'title',
  );
  @override
  late final i0.GeneratedColumn<String> title = i0.GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _detailsMeta = const i0.VerificationMeta(
    'details',
  );
  @override
  late final i0.GeneratedColumn<String> details = i0.GeneratedColumn<String>(
    'details',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _dueMeta = const i0.VerificationMeta('due');
  @override
  late final i0.GeneratedColumn<DateTime> due = i0.GeneratedColumn<DateTime>(
    'due',
    aliasedName,
    false,
    check:
        () =>
            dueDateOnly.isValue(false) |
            (due.hour.isValue(23) & due.minute.isValue(59)),
    type: i0.DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _dueDateOnlyMeta = const i0.VerificationMeta(
    'dueDateOnly',
  );
  @override
  late final i0.GeneratedColumn<bool> dueDateOnly = i0.GeneratedColumn<bool>(
    'due_date_only',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("due_date_only" IN (0, 1))',
    ),
  );
  static const i0.VerificationMeta _doneMeta = const i0.VerificationMeta(
    'done',
  );
  @override
  late final i0.GeneratedColumn<bool> done = i0.GeneratedColumn<bool>(
    'done',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("done" IN (0, 1))',
    ),
    defaultValue: i4.Constant(false),
  );
  static const i0.VerificationMeta _importantMeta = const i0.VerificationMeta(
    'important',
  );
  @override
  late final i0.GeneratedColumn<bool> important = i0.GeneratedColumn<bool>(
    'important',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("important" IN (0, 1))',
    ),
    defaultValue: i4.Constant(false),
  );
  static const i0.VerificationMeta _repeatMeta = const i0.VerificationMeta(
    'repeat',
  );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i2.RepeatType, int> repeat =
      i0.GeneratedColumn<int>(
        'repeat',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: false,
        defaultValue: i4.Constant<int>(i2.RepeatType.none.index),
      ).withConverter<i2.RepeatType>(i1.$SubmissionsTable.$converterrepeat);
  static const i0.VerificationMeta _colorMeta = const i0.VerificationMeta(
    'color',
  );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i3.Color?, int> color =
      i0.GeneratedColumn<int>(
        'color',
        aliasedName,
        true,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: false,
      ).withConverter<i3.Color?>(i1.$SubmissionsTable.$convertercolorn);
  static const i0.VerificationMeta _googleTasksTaskIdMeta =
      const i0.VerificationMeta('googleTasksTaskId');
  @override
  late final i0.GeneratedColumn<String> googleTasksTaskId =
      i0.GeneratedColumn<String>(
        'google_tasks_task_id',
        aliasedName,
        true,
        type: i0.DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const i0.VerificationMeta _repeatSubmissionCreatedMeta =
      const i0.VerificationMeta('repeatSubmissionCreated');
  @override
  late final i0.GeneratedColumn<bool> repeatSubmissionCreated =
      i0.GeneratedColumn<bool>(
        'repeat_submission_created',
        aliasedName,
        true,
        type: i0.DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
          'CHECK ("repeat_submission_created" IN (0, 1))',
        ),
      );
  static const i0.VerificationMeta _createdAtMeta = const i0.VerificationMeta(
    'createdAt',
  );
  @override
  late final i0.GeneratedColumn<DateTime> createdAt =
      i0.GeneratedColumn<DateTime>(
        'created_at',
        aliasedName,
        false,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
        clientDefault: () => i5.clock.now(),
      );
  static const i0.VerificationMeta _updatedAtMeta = const i0.VerificationMeta(
    'updatedAt',
  );
  @override
  late final i0.GeneratedColumn<DateTime> updatedAt =
      i0.GeneratedColumn<DateTime>(
        'updated_at',
        aliasedName,
        false,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
        clientDefault: () => i5.clock.now(),
      );
  @override
  List<i0.GeneratedColumn> get $columns => [
    id,
    title,
    details,
    due,
    dueDateOnly,
    done,
    important,
    repeat,
    color,
    googleTasksTaskId,
    repeatSubmissionCreated,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'submissions';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.Submission> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('details')) {
      context.handle(
        _detailsMeta,
        details.isAcceptableOrUnknown(data['details']!, _detailsMeta),
      );
    } else if (isInserting) {
      context.missing(_detailsMeta);
    }
    if (data.containsKey('due')) {
      context.handle(
        _dueMeta,
        due.isAcceptableOrUnknown(data['due']!, _dueMeta),
      );
    } else if (isInserting) {
      context.missing(_dueMeta);
    }
    if (data.containsKey('due_date_only')) {
      context.handle(
        _dueDateOnlyMeta,
        dueDateOnly.isAcceptableOrUnknown(
          data['due_date_only']!,
          _dueDateOnlyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dueDateOnlyMeta);
    }
    if (data.containsKey('done')) {
      context.handle(
        _doneMeta,
        done.isAcceptableOrUnknown(data['done']!, _doneMeta),
      );
    }
    if (data.containsKey('important')) {
      context.handle(
        _importantMeta,
        important.isAcceptableOrUnknown(data['important']!, _importantMeta),
      );
    }
    context.handle(_repeatMeta, const i0.VerificationResult.success());
    context.handle(_colorMeta, const i0.VerificationResult.success());
    if (data.containsKey('google_tasks_task_id')) {
      context.handle(
        _googleTasksTaskIdMeta,
        googleTasksTaskId.isAcceptableOrUnknown(
          data['google_tasks_task_id']!,
          _googleTasksTaskIdMeta,
        ),
      );
    }
    if (data.containsKey('repeat_submission_created')) {
      context.handle(
        _repeatSubmissionCreatedMeta,
        repeatSubmissionCreated.isAcceptableOrUnknown(
          data['repeat_submission_created']!,
          _repeatSubmissionCreatedMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.Submission map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Submission(
      id:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      details:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.string,
            data['${effectivePrefix}details'],
          )!,
      due:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.dateTime,
            data['${effectivePrefix}due'],
          )!,
      dueDateOnly:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.bool,
            data['${effectivePrefix}due_date_only'],
          )!,
      done:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.bool,
            data['${effectivePrefix}done'],
          )!,
      important:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.bool,
            data['${effectivePrefix}important'],
          )!,
      repeat: i1.$SubmissionsTable.$converterrepeat.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}repeat'],
        )!,
      ),
      color: i1.$SubmissionsTable.$convertercolorn.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}color'],
        ),
      ),
      googleTasksTaskId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}google_tasks_task_id'],
      ),
      repeatSubmissionCreated: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}repeat_submission_created'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            i0.DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $SubmissionsTable createAlias(String alias) {
    return $SubmissionsTable(attachedDatabase, alias);
  }

  static i0.JsonTypeConverter2<i2.RepeatType, int, int> $converterrepeat =
      const i0.EnumIndexConverter<i2.RepeatType>(i2.RepeatType.values);
  static i0.TypeConverter<i3.Color, int> $convertercolor = i6.ColorConverter();
  static i0.TypeConverter<i3.Color?, int?> $convertercolorn = i0
      .NullAwareTypeConverter.wrap($convertercolor);
}

class Submission extends i0.DataClass implements i0.Insertable<i1.Submission> {
  /// Unique ID of the row. This corresponds to the document ID on Cloud Firestore.
  final String id;

  /// Title of the submission.
  final String title;

  /// Detail text of the submission.
  final String details;

  /// Raw due datetime of the submission.
  final DateTime due;

  /// If true, the user only cares about the due date, not the time.
  final bool dueDateOnly;

  /// Whether the submission is marked as done.
  final bool done;

  /// Whether the submission is marked as important.
  final bool important;

  /// Repeat type of the submission.
  final i2.RepeatType repeat;

  /// Theme color of the submission.
  final i3.Color? color;

  /// Task ID of the task created on Google Tasks.
  final String? googleTasksTaskId;

  /// Whether the submission has a repeat submission created.
  final bool? repeatSubmissionCreated;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Submission({
    required this.id,
    required this.title,
    required this.details,
    required this.due,
    required this.dueDateOnly,
    required this.done,
    required this.important,
    required this.repeat,
    this.color,
    this.googleTasksTaskId,
    this.repeatSubmissionCreated,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<String>(id);
    map['title'] = i0.Variable<String>(title);
    map['details'] = i0.Variable<String>(details);
    map['due'] = i0.Variable<DateTime>(due);
    map['due_date_only'] = i0.Variable<bool>(dueDateOnly);
    map['done'] = i0.Variable<bool>(done);
    map['important'] = i0.Variable<bool>(important);
    {
      map['repeat'] = i0.Variable<int>(
        i1.$SubmissionsTable.$converterrepeat.toSql(repeat),
      );
    }
    if (!nullToAbsent || color != null) {
      map['color'] = i0.Variable<int>(
        i1.$SubmissionsTable.$convertercolorn.toSql(color),
      );
    }
    if (!nullToAbsent || googleTasksTaskId != null) {
      map['google_tasks_task_id'] = i0.Variable<String>(googleTasksTaskId);
    }
    if (!nullToAbsent || repeatSubmissionCreated != null) {
      map['repeat_submission_created'] = i0.Variable<bool>(
        repeatSubmissionCreated,
      );
    }
    map['created_at'] = i0.Variable<DateTime>(createdAt);
    map['updated_at'] = i0.Variable<DateTime>(updatedAt);
    return map;
  }

  i1.SubmissionsCompanion toCompanion(bool nullToAbsent) {
    return i1.SubmissionsCompanion(
      id: i0.Value(id),
      title: i0.Value(title),
      details: i0.Value(details),
      due: i0.Value(due),
      dueDateOnly: i0.Value(dueDateOnly),
      done: i0.Value(done),
      important: i0.Value(important),
      repeat: i0.Value(repeat),
      color:
          color == null && nullToAbsent
              ? const i0.Value.absent()
              : i0.Value(color),
      googleTasksTaskId:
          googleTasksTaskId == null && nullToAbsent
              ? const i0.Value.absent()
              : i0.Value(googleTasksTaskId),
      repeatSubmissionCreated:
          repeatSubmissionCreated == null && nullToAbsent
              ? const i0.Value.absent()
              : i0.Value(repeatSubmissionCreated),
      createdAt: i0.Value(createdAt),
      updatedAt: i0.Value(updatedAt),
    );
  }

  factory Submission.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Submission(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      details: serializer.fromJson<String>(json['details']),
      due: serializer.fromJson<DateTime>(json['due']),
      dueDateOnly: serializer.fromJson<bool>(json['dueDateOnly']),
      done: serializer.fromJson<bool>(json['done']),
      important: serializer.fromJson<bool>(json['important']),
      repeat: i1.$SubmissionsTable.$converterrepeat.fromJson(
        serializer.fromJson<int>(json['repeat']),
      ),
      color: serializer.fromJson<i3.Color?>(json['color']),
      googleTasksTaskId: serializer.fromJson<String?>(
        json['googleTasksTaskId'],
      ),
      repeatSubmissionCreated: serializer.fromJson<bool?>(
        json['repeatSubmissionCreated'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'details': serializer.toJson<String>(details),
      'due': serializer.toJson<DateTime>(due),
      'dueDateOnly': serializer.toJson<bool>(dueDateOnly),
      'done': serializer.toJson<bool>(done),
      'important': serializer.toJson<bool>(important),
      'repeat': serializer.toJson<int>(
        i1.$SubmissionsTable.$converterrepeat.toJson(repeat),
      ),
      'color': serializer.toJson<i3.Color?>(color),
      'googleTasksTaskId': serializer.toJson<String?>(googleTasksTaskId),
      'repeatSubmissionCreated': serializer.toJson<bool?>(
        repeatSubmissionCreated,
      ),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  i1.Submission copyWith({
    String? id,
    String? title,
    String? details,
    DateTime? due,
    bool? dueDateOnly,
    bool? done,
    bool? important,
    i2.RepeatType? repeat,
    i0.Value<i3.Color?> color = const i0.Value.absent(),
    i0.Value<String?> googleTasksTaskId = const i0.Value.absent(),
    i0.Value<bool?> repeatSubmissionCreated = const i0.Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => i1.Submission(
    id: id ?? this.id,
    title: title ?? this.title,
    details: details ?? this.details,
    due: due ?? this.due,
    dueDateOnly: dueDateOnly ?? this.dueDateOnly,
    done: done ?? this.done,
    important: important ?? this.important,
    repeat: repeat ?? this.repeat,
    color: color.present ? color.value : this.color,
    googleTasksTaskId:
        googleTasksTaskId.present
            ? googleTasksTaskId.value
            : this.googleTasksTaskId,
    repeatSubmissionCreated:
        repeatSubmissionCreated.present
            ? repeatSubmissionCreated.value
            : this.repeatSubmissionCreated,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Submission copyWithCompanion(i1.SubmissionsCompanion data) {
    return Submission(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      details: data.details.present ? data.details.value : this.details,
      due: data.due.present ? data.due.value : this.due,
      dueDateOnly:
          data.dueDateOnly.present ? data.dueDateOnly.value : this.dueDateOnly,
      done: data.done.present ? data.done.value : this.done,
      important: data.important.present ? data.important.value : this.important,
      repeat: data.repeat.present ? data.repeat.value : this.repeat,
      color: data.color.present ? data.color.value : this.color,
      googleTasksTaskId:
          data.googleTasksTaskId.present
              ? data.googleTasksTaskId.value
              : this.googleTasksTaskId,
      repeatSubmissionCreated:
          data.repeatSubmissionCreated.present
              ? data.repeatSubmissionCreated.value
              : this.repeatSubmissionCreated,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Submission(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('details: $details, ')
          ..write('due: $due, ')
          ..write('dueDateOnly: $dueDateOnly, ')
          ..write('done: $done, ')
          ..write('important: $important, ')
          ..write('repeat: $repeat, ')
          ..write('color: $color, ')
          ..write('googleTasksTaskId: $googleTasksTaskId, ')
          ..write('repeatSubmissionCreated: $repeatSubmissionCreated, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    details,
    due,
    dueDateOnly,
    done,
    important,
    repeat,
    color,
    googleTasksTaskId,
    repeatSubmissionCreated,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Submission &&
          other.id == this.id &&
          other.title == this.title &&
          other.details == this.details &&
          other.due == this.due &&
          other.dueDateOnly == this.dueDateOnly &&
          other.done == this.done &&
          other.important == this.important &&
          other.repeat == this.repeat &&
          other.color == this.color &&
          other.googleTasksTaskId == this.googleTasksTaskId &&
          other.repeatSubmissionCreated == this.repeatSubmissionCreated &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SubmissionsCompanion extends i0.UpdateCompanion<i1.Submission> {
  final i0.Value<String> id;
  final i0.Value<String> title;
  final i0.Value<String> details;
  final i0.Value<DateTime> due;
  final i0.Value<bool> dueDateOnly;
  final i0.Value<bool> done;
  final i0.Value<bool> important;
  final i0.Value<i2.RepeatType> repeat;
  final i0.Value<i3.Color?> color;
  final i0.Value<String?> googleTasksTaskId;
  final i0.Value<bool?> repeatSubmissionCreated;
  final i0.Value<DateTime> createdAt;
  final i0.Value<DateTime> updatedAt;
  final i0.Value<int> rowid;
  const SubmissionsCompanion({
    this.id = const i0.Value.absent(),
    this.title = const i0.Value.absent(),
    this.details = const i0.Value.absent(),
    this.due = const i0.Value.absent(),
    this.dueDateOnly = const i0.Value.absent(),
    this.done = const i0.Value.absent(),
    this.important = const i0.Value.absent(),
    this.repeat = const i0.Value.absent(),
    this.color = const i0.Value.absent(),
    this.googleTasksTaskId = const i0.Value.absent(),
    this.repeatSubmissionCreated = const i0.Value.absent(),
    this.createdAt = const i0.Value.absent(),
    this.updatedAt = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  SubmissionsCompanion.insert({
    required String id,
    required String title,
    required String details,
    required DateTime due,
    required bool dueDateOnly,
    this.done = const i0.Value.absent(),
    this.important = const i0.Value.absent(),
    this.repeat = const i0.Value.absent(),
    this.color = const i0.Value.absent(),
    this.googleTasksTaskId = const i0.Value.absent(),
    this.repeatSubmissionCreated = const i0.Value.absent(),
    this.createdAt = const i0.Value.absent(),
    this.updatedAt = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  }) : id = i0.Value(id),
       title = i0.Value(title),
       details = i0.Value(details),
       due = i0.Value(due),
       dueDateOnly = i0.Value(dueDateOnly);
  static i0.Insertable<i1.Submission> custom({
    i0.Expression<String>? id,
    i0.Expression<String>? title,
    i0.Expression<String>? details,
    i0.Expression<DateTime>? due,
    i0.Expression<bool>? dueDateOnly,
    i0.Expression<bool>? done,
    i0.Expression<bool>? important,
    i0.Expression<int>? repeat,
    i0.Expression<int>? color,
    i0.Expression<String>? googleTasksTaskId,
    i0.Expression<bool>? repeatSubmissionCreated,
    i0.Expression<DateTime>? createdAt,
    i0.Expression<DateTime>? updatedAt,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (details != null) 'details': details,
      if (due != null) 'due': due,
      if (dueDateOnly != null) 'due_date_only': dueDateOnly,
      if (done != null) 'done': done,
      if (important != null) 'important': important,
      if (repeat != null) 'repeat': repeat,
      if (color != null) 'color': color,
      if (googleTasksTaskId != null) 'google_tasks_task_id': googleTasksTaskId,
      if (repeatSubmissionCreated != null)
        'repeat_submission_created': repeatSubmissionCreated,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.SubmissionsCompanion copyWith({
    i0.Value<String>? id,
    i0.Value<String>? title,
    i0.Value<String>? details,
    i0.Value<DateTime>? due,
    i0.Value<bool>? dueDateOnly,
    i0.Value<bool>? done,
    i0.Value<bool>? important,
    i0.Value<i2.RepeatType>? repeat,
    i0.Value<i3.Color?>? color,
    i0.Value<String?>? googleTasksTaskId,
    i0.Value<bool?>? repeatSubmissionCreated,
    i0.Value<DateTime>? createdAt,
    i0.Value<DateTime>? updatedAt,
    i0.Value<int>? rowid,
  }) {
    return i1.SubmissionsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      details: details ?? this.details,
      due: due ?? this.due,
      dueDateOnly: dueDateOnly ?? this.dueDateOnly,
      done: done ?? this.done,
      important: important ?? this.important,
      repeat: repeat ?? this.repeat,
      color: color ?? this.color,
      googleTasksTaskId: googleTasksTaskId ?? this.googleTasksTaskId,
      repeatSubmissionCreated:
          repeatSubmissionCreated ?? this.repeatSubmissionCreated,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = i0.Variable<String>(title.value);
    }
    if (details.present) {
      map['details'] = i0.Variable<String>(details.value);
    }
    if (due.present) {
      map['due'] = i0.Variable<DateTime>(due.value);
    }
    if (dueDateOnly.present) {
      map['due_date_only'] = i0.Variable<bool>(dueDateOnly.value);
    }
    if (done.present) {
      map['done'] = i0.Variable<bool>(done.value);
    }
    if (important.present) {
      map['important'] = i0.Variable<bool>(important.value);
    }
    if (repeat.present) {
      map['repeat'] = i0.Variable<int>(
        i1.$SubmissionsTable.$converterrepeat.toSql(repeat.value),
      );
    }
    if (color.present) {
      map['color'] = i0.Variable<int>(
        i1.$SubmissionsTable.$convertercolorn.toSql(color.value),
      );
    }
    if (googleTasksTaskId.present) {
      map['google_tasks_task_id'] = i0.Variable<String>(
        googleTasksTaskId.value,
      );
    }
    if (repeatSubmissionCreated.present) {
      map['repeat_submission_created'] = i0.Variable<bool>(
        repeatSubmissionCreated.value,
      );
    }
    if (createdAt.present) {
      map['created_at'] = i0.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = i0.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubmissionsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('details: $details, ')
          ..write('due: $due, ')
          ..write('dueDateOnly: $dueDateOnly, ')
          ..write('done: $done, ')
          ..write('important: $important, ')
          ..write('repeat: $repeat, ')
          ..write('color: $color, ')
          ..write('googleTasksTaskId: $googleTasksTaskId, ')
          ..write('repeatSubmissionCreated: $repeatSubmissionCreated, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
