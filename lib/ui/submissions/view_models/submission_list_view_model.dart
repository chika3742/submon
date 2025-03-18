import "dart:ui";

import "package:diffutil_dart/diffutil.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "../../../data/models/submissions.drift.dart";
import "../../../data/repositories/submissions_repository.dart";

part "submission_list_view_model.freezed.dart";
part "submission_list_view_model.g.dart";

typedef ItemInsertionCallback = void Function(int index);
typedef ItemRemovalCallback<T> = void Function(int index, T item);

@riverpod
class SubmissionListViewModel extends _$SubmissionListViewModel {
  ItemInsertionCallback? _onItemInserted;
  ItemRemovalCallback<Submission>? _onItemRemoved;

  set onItemInserted(ItemInsertionCallback value) {
    _onItemInserted = value;
  }

  set onItemRemoved(ItemRemovalCallback<Submission> value) {
    _onItemRemoved = value;
  }

  @override
  SubmissionListState build() {
    ref.listen(submissionsProvider(done: false), (prev, next) {
      // ensure that both previous and next values are present
      if (prev?.hasValue == true && next.hasValue) {
        _notifyListUpdates(prev!.value!, next.value!);
      }
    });

    return SubmissionListState(
      submissions: ref.watch(submissionsProvider(done: false)),
    );
  }

  void _notifyListUpdates(List<Submission> prev, List<Submission> next) {
    final DiffResult<Submission> diff = calculateListDiff(
      prev, next,
      detectMoves: false, // AnimatedList does not support move of items
    );
    final Iterable<DataDiffUpdate<Submission>> updates = diff.getUpdatesWithData();
    for (final update in updates) {
      switch (update) {
        case DataInsert<Submission>(:final position):
          _onItemInserted?.call(position);
        case DataRemove<Submission>(:final position, :final data):
          _onItemRemoved?.call(position, data);
        case DataChange<Submission>():
          // no-op
        case DataMove<Submission>():
          // never happens
      }
    }
  }

  Future<void> insertSubmission(SubmissionsCompanion companion) {
    return ref.read(submissionsCudRepositoryProvider.notifier).create(companion);
  }
}

@freezed
class SubmissionListState with _$SubmissionListState {
  const factory SubmissionListState({
    required AsyncValue<List<Submission>> submissions,
    VoidCallback? onItemInserted,
    VoidCallback? onItemRemoved,
  }) = _SubmissionListState;
}
