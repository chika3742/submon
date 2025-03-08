import "package:drift/drift.dart";
import "package:drift_flutter/drift_flutter.dart";

import "models.dart";

part "db.g.dart";

@DriftDatabase(tables: [
  Submissions,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 8;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: "db",
    );
  }
}
