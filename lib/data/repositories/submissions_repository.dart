import "dart:async";

import "package:drift/drift.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../models/submissions.drift.dart";
import "../services/db.dart";

part "submissions_repository.g.dart";

@riverpod
class SubmissionsCudRepository extends _$SubmissionsCudRepository {
  @override
  void build() {}

  AppDatabase _getDb() {
    return ref.read(appDatabaseProvider);
  }

  /// Creates a new submission. Returns the rowid of the newly created item.
  Future<int> create(SubmissionsCompanion companion) {
    return _getDb().managers.submissions.create((_) => companion);
  }

  /// Updates a submission. Returns the number of updated items.
  Future<int> modify(SubmissionsCompanion companion) {
    return _getDb().managers.submissions.update((_) => companion);
  }

  /// Deletes a submission by its id. Returns the number of deleted items.
  Future<int> delete(String id) {
    return _getDb().managers.submissions.filter((f) => f.id.equals(id)).delete();
  }
}

@riverpod
Stream<List<Submission>> submissions(Ref ref, {bool? done}) {
  final AppDatabase db = ref.watch(appDatabaseProvider);
  final q = db.select(db.submissions);
  if (done != null) {
    q.where((t) => t.done.equals(done));
    q.orderBy([
      (t) => OrderingTerm(expression: t.due, mode: done ? OrderingMode.desc : OrderingMode.asc),
      (t) => OrderingTerm(expression: t.createdAt),
    ]);
  }
  return q.watch();
}
