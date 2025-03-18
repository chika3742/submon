// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $SubmissionsTable extends Submissions
    with TableInfo<$SubmissionsTable, Submission> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubmissionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _detailsMeta = const VerificationMeta(
    'details',
  );
  @override
  late final GeneratedColumn<String> details = GeneratedColumn<String>(
    'details',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueMeta = const VerificationMeta('due');
  @override
  late final GeneratedColumn<DateTime> due = GeneratedColumn<DateTime>(
    'due',
    aliasedName,
    false,
    check:
        () =>
            dueDateOnly.isValue(false) |
            (due.hour.isValue(23) & due.minute.isValue(59)),
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueDateOnlyMeta = const VerificationMeta(
    'dueDateOnly',
  );
  @override
  late final GeneratedColumn<bool> dueDateOnly = GeneratedColumn<bool>(
    'due_date_only',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("due_date_only" IN (0, 1))',
    ),
  );
  static const VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<bool> done = GeneratedColumn<bool>(
    'done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("done" IN (0, 1))',
    ),
    defaultValue: Constant(false),
  );
  static const VerificationMeta _importantMeta = const VerificationMeta(
    'important',
  );
  @override
  late final GeneratedColumn<bool> important = GeneratedColumn<bool>(
    'important',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("important" IN (0, 1))',
    ),
    defaultValue: Constant(false),
  );
  static const VerificationMeta _repeatMeta = const VerificationMeta('repeat');
  @override
  late final GeneratedColumnWithTypeConverter<RepeatType, int> repeat =
      GeneratedColumn<int>(
        'repeat',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
        defaultValue: Constant<int>(RepeatType.none.index),
      ).withConverter<RepeatType>($SubmissionsTable.$converterrepeat);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumnWithTypeConverter<Color?, int> color =
      GeneratedColumn<int>(
        'color',
        aliasedName,
        true,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
      ).withConverter<Color?>($SubmissionsTable.$convertercolorn);
  static const VerificationMeta _googleTasksTaskIdMeta = const VerificationMeta(
    'googleTasksTaskId',
  );
  @override
  late final GeneratedColumn<String> googleTasksTaskId =
      GeneratedColumn<String>(
        'google_tasks_task_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _repeatSubmissionCreatedMeta =
      const VerificationMeta('repeatSubmissionCreated');
  @override
  late final GeneratedColumn<bool> repeatSubmissionCreated =
      GeneratedColumn<bool>(
        'repeat_submission_created',
        aliasedName,
        true,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("repeat_submission_created" IN (0, 1))',
        ),
      );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: () => clock.now(),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: () => clock.now(),
  );
  @override
  List<GeneratedColumn> get $columns => [
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
  VerificationContext validateIntegrity(
    Insertable<Submission> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
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
    context.handle(_repeatMeta, const VerificationResult.success());
    context.handle(_colorMeta, const VerificationResult.success());
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
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Submission map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Submission(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      details:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}details'],
          )!,
      due:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}due'],
          )!,
      dueDateOnly:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}due_date_only'],
          )!,
      done:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}done'],
          )!,
      important:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}important'],
          )!,
      repeat: $SubmissionsTable.$converterrepeat.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}repeat'],
        )!,
      ),
      color: $SubmissionsTable.$convertercolorn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}color'],
        ),
      ),
      googleTasksTaskId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}google_tasks_task_id'],
      ),
      repeatSubmissionCreated: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}repeat_submission_created'],
      ),
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $SubmissionsTable createAlias(String alias) {
    return $SubmissionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RepeatType, int, int> $converterrepeat =
      const EnumIndexConverter<RepeatType>(RepeatType.values);
  static TypeConverter<Color, int> $convertercolor = ColorConverter();
  static TypeConverter<Color?, int?> $convertercolorn =
      NullAwareTypeConverter.wrap($convertercolor);
}

class Submission extends DataClass implements Insertable<Submission> {
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
  final RepeatType repeat;

  /// Theme color of the submission.
  final Color? color;

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
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['details'] = Variable<String>(details);
    map['due'] = Variable<DateTime>(due);
    map['due_date_only'] = Variable<bool>(dueDateOnly);
    map['done'] = Variable<bool>(done);
    map['important'] = Variable<bool>(important);
    {
      map['repeat'] = Variable<int>(
        $SubmissionsTable.$converterrepeat.toSql(repeat),
      );
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<int>(
        $SubmissionsTable.$convertercolorn.toSql(color),
      );
    }
    if (!nullToAbsent || googleTasksTaskId != null) {
      map['google_tasks_task_id'] = Variable<String>(googleTasksTaskId);
    }
    if (!nullToAbsent || repeatSubmissionCreated != null) {
      map['repeat_submission_created'] = Variable<bool>(
        repeatSubmissionCreated,
      );
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SubmissionsCompanion toCompanion(bool nullToAbsent) {
    return SubmissionsCompanion(
      id: Value(id),
      title: Value(title),
      details: Value(details),
      due: Value(due),
      dueDateOnly: Value(dueDateOnly),
      done: Value(done),
      important: Value(important),
      repeat: Value(repeat),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      googleTasksTaskId:
          googleTasksTaskId == null && nullToAbsent
              ? const Value.absent()
              : Value(googleTasksTaskId),
      repeatSubmissionCreated:
          repeatSubmissionCreated == null && nullToAbsent
              ? const Value.absent()
              : Value(repeatSubmissionCreated),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Submission.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Submission(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      details: serializer.fromJson<String>(json['details']),
      due: serializer.fromJson<DateTime>(json['due']),
      dueDateOnly: serializer.fromJson<bool>(json['dueDateOnly']),
      done: serializer.fromJson<bool>(json['done']),
      important: serializer.fromJson<bool>(json['important']),
      repeat: $SubmissionsTable.$converterrepeat.fromJson(
        serializer.fromJson<int>(json['repeat']),
      ),
      color: serializer.fromJson<Color?>(json['color']),
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
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'details': serializer.toJson<String>(details),
      'due': serializer.toJson<DateTime>(due),
      'dueDateOnly': serializer.toJson<bool>(dueDateOnly),
      'done': serializer.toJson<bool>(done),
      'important': serializer.toJson<bool>(important),
      'repeat': serializer.toJson<int>(
        $SubmissionsTable.$converterrepeat.toJson(repeat),
      ),
      'color': serializer.toJson<Color?>(color),
      'googleTasksTaskId': serializer.toJson<String?>(googleTasksTaskId),
      'repeatSubmissionCreated': serializer.toJson<bool?>(
        repeatSubmissionCreated,
      ),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Submission copyWith({
    String? id,
    String? title,
    String? details,
    DateTime? due,
    bool? dueDateOnly,
    bool? done,
    bool? important,
    RepeatType? repeat,
    Value<Color?> color = const Value.absent(),
    Value<String?> googleTasksTaskId = const Value.absent(),
    Value<bool?> repeatSubmissionCreated = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Submission(
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
  Submission copyWithCompanion(SubmissionsCompanion data) {
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
      (other is Submission &&
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

class SubmissionsCompanion extends UpdateCompanion<Submission> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> details;
  final Value<DateTime> due;
  final Value<bool> dueDateOnly;
  final Value<bool> done;
  final Value<bool> important;
  final Value<RepeatType> repeat;
  final Value<Color?> color;
  final Value<String?> googleTasksTaskId;
  final Value<bool?> repeatSubmissionCreated;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SubmissionsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.details = const Value.absent(),
    this.due = const Value.absent(),
    this.dueDateOnly = const Value.absent(),
    this.done = const Value.absent(),
    this.important = const Value.absent(),
    this.repeat = const Value.absent(),
    this.color = const Value.absent(),
    this.googleTasksTaskId = const Value.absent(),
    this.repeatSubmissionCreated = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SubmissionsCompanion.insert({
    required String id,
    required String title,
    required String details,
    required DateTime due,
    required bool dueDateOnly,
    this.done = const Value.absent(),
    this.important = const Value.absent(),
    this.repeat = const Value.absent(),
    this.color = const Value.absent(),
    this.googleTasksTaskId = const Value.absent(),
    this.repeatSubmissionCreated = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       details = Value(details),
       due = Value(due),
       dueDateOnly = Value(dueDateOnly);
  static Insertable<Submission> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? details,
    Expression<DateTime>? due,
    Expression<bool>? dueDateOnly,
    Expression<bool>? done,
    Expression<bool>? important,
    Expression<int>? repeat,
    Expression<int>? color,
    Expression<String>? googleTasksTaskId,
    Expression<bool>? repeatSubmissionCreated,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
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

  SubmissionsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? details,
    Value<DateTime>? due,
    Value<bool>? dueDateOnly,
    Value<bool>? done,
    Value<bool>? important,
    Value<RepeatType>? repeat,
    Value<Color?>? color,
    Value<String?>? googleTasksTaskId,
    Value<bool?>? repeatSubmissionCreated,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return SubmissionsCompanion(
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
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (details.present) {
      map['details'] = Variable<String>(details.value);
    }
    if (due.present) {
      map['due'] = Variable<DateTime>(due.value);
    }
    if (dueDateOnly.present) {
      map['due_date_only'] = Variable<bool>(dueDateOnly.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    if (important.present) {
      map['important'] = Variable<bool>(important.value);
    }
    if (repeat.present) {
      map['repeat'] = Variable<int>(
        $SubmissionsTable.$converterrepeat.toSql(repeat.value),
      );
    }
    if (color.present) {
      map['color'] = Variable<int>(
        $SubmissionsTable.$convertercolorn.toSql(color.value),
      );
    }
    if (googleTasksTaskId.present) {
      map['google_tasks_task_id'] = Variable<String>(googleTasksTaskId.value);
    }
    if (repeatSubmissionCreated.present) {
      map['repeat_submission_created'] = Variable<bool>(
        repeatSubmissionCreated.value,
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SubmissionsTable submissions = $SubmissionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [submissions];
}

typedef $$SubmissionsTableCreateCompanionBuilder =
    SubmissionsCompanion Function({
      required String id,
      required String title,
      required String details,
      required DateTime due,
      required bool dueDateOnly,
      Value<bool> done,
      Value<bool> important,
      Value<RepeatType> repeat,
      Value<Color?> color,
      Value<String?> googleTasksTaskId,
      Value<bool?> repeatSubmissionCreated,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$SubmissionsTableUpdateCompanionBuilder =
    SubmissionsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> details,
      Value<DateTime> due,
      Value<bool> dueDateOnly,
      Value<bool> done,
      Value<bool> important,
      Value<RepeatType> repeat,
      Value<Color?> color,
      Value<String?> googleTasksTaskId,
      Value<bool?> repeatSubmissionCreated,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$SubmissionsTableFilterComposer
    extends Composer<_$AppDatabase, $SubmissionsTable> {
  $$SubmissionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get due => $composableBuilder(
    column: $table.due,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get dueDateOnly => $composableBuilder(
    column: $table.dueDateOnly,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get important => $composableBuilder(
    column: $table.important,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<RepeatType, RepeatType, int> get repeat =>
      $composableBuilder(
        column: $table.repeat,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<Color?, Color, int> get color =>
      $composableBuilder(
        column: $table.color,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get googleTasksTaskId => $composableBuilder(
    column: $table.googleTasksTaskId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get repeatSubmissionCreated => $composableBuilder(
    column: $table.repeatSubmissionCreated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SubmissionsTableOrderingComposer
    extends Composer<_$AppDatabase, $SubmissionsTable> {
  $$SubmissionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get due => $composableBuilder(
    column: $table.due,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get dueDateOnly => $composableBuilder(
    column: $table.dueDateOnly,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get done => $composableBuilder(
    column: $table.done,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get important => $composableBuilder(
    column: $table.important,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get repeat => $composableBuilder(
    column: $table.repeat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get googleTasksTaskId => $composableBuilder(
    column: $table.googleTasksTaskId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get repeatSubmissionCreated => $composableBuilder(
    column: $table.repeatSubmissionCreated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SubmissionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SubmissionsTable> {
  $$SubmissionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get details =>
      $composableBuilder(column: $table.details, builder: (column) => column);

  GeneratedColumn<DateTime> get due =>
      $composableBuilder(column: $table.due, builder: (column) => column);

  GeneratedColumn<bool> get dueDateOnly => $composableBuilder(
    column: $table.dueDateOnly,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get done =>
      $composableBuilder(column: $table.done, builder: (column) => column);

  GeneratedColumn<bool> get important =>
      $composableBuilder(column: $table.important, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RepeatType, int> get repeat =>
      $composableBuilder(column: $table.repeat, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Color?, int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get googleTasksTaskId => $composableBuilder(
    column: $table.googleTasksTaskId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get repeatSubmissionCreated => $composableBuilder(
    column: $table.repeatSubmissionCreated,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$SubmissionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SubmissionsTable,
          Submission,
          $$SubmissionsTableFilterComposer,
          $$SubmissionsTableOrderingComposer,
          $$SubmissionsTableAnnotationComposer,
          $$SubmissionsTableCreateCompanionBuilder,
          $$SubmissionsTableUpdateCompanionBuilder,
          (
            Submission,
            BaseReferences<_$AppDatabase, $SubmissionsTable, Submission>,
          ),
          Submission,
          PrefetchHooks Function()
        > {
  $$SubmissionsTableTableManager(_$AppDatabase db, $SubmissionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SubmissionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$SubmissionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$SubmissionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> details = const Value.absent(),
                Value<DateTime> due = const Value.absent(),
                Value<bool> dueDateOnly = const Value.absent(),
                Value<bool> done = const Value.absent(),
                Value<bool> important = const Value.absent(),
                Value<RepeatType> repeat = const Value.absent(),
                Value<Color?> color = const Value.absent(),
                Value<String?> googleTasksTaskId = const Value.absent(),
                Value<bool?> repeatSubmissionCreated = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SubmissionsCompanion(
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
                Value<bool> done = const Value.absent(),
                Value<bool> important = const Value.absent(),
                Value<RepeatType> repeat = const Value.absent(),
                Value<Color?> color = const Value.absent(),
                Value<String?> googleTasksTaskId = const Value.absent(),
                Value<bool?> repeatSubmissionCreated = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SubmissionsCompanion.insert(
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
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SubmissionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SubmissionsTable,
      Submission,
      $$SubmissionsTableFilterComposer,
      $$SubmissionsTableOrderingComposer,
      $$SubmissionsTableAnnotationComposer,
      $$SubmissionsTableCreateCompanionBuilder,
      $$SubmissionsTableUpdateCompanionBuilder,
      (
        Submission,
        BaseReferences<_$AppDatabase, $SubmissionsTable, Submission>,
      ),
      Submission,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SubmissionsTableTableManager get submissions =>
      $$SubmissionsTableTableManager(_db, _db.submissions);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'ec6afafffde645f9d88aca96a68dc9ec485be6ea';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = AutoDisposeProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
