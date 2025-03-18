import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:material_symbols_icons/material_symbols_icons.dart";

import "../../../data/models/submissions.drift.dart";
import "../../../i18n/strings.g.dart";
import "../../core/center_error.dart";
import "../view_models/submission_list_view_model.dart";
import "submission_item.dart";
import "submission_item_animation.dart";

class SubmissionListScreen extends HookConsumerWidget {
  const SubmissionListScreen({super.key});

  static const itemAnimationDuration = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: specify_nonobvious_local_variable_types
    final listKey = useMemoized(() => GlobalKey<AnimatedListState>());
    final scrollController = useScrollController();

    final SubmissionListState state = ref.watch(submissionListViewModelProvider);
    final SubmissionListViewModel viewModel = ref.read(submissionListViewModelProvider.notifier);

    viewModel.onItemInserted = (int index) {
      listKey.currentState?.insertItem(index, duration: itemAnimationDuration);

      // scroll to the newly added item if it's not visible
      Future.delayed(itemAnimationDuration * (1 / 3), () {
        final scrollerHeight = (listKey.currentContext?.findRenderObject() as RenderBox).size.height;
        _scrollToNewlyInsertedItem(index, scrollController, scrollerHeight);
      });
    };
    viewModel.onItemRemoved = (int index, Submission item) {
      listKey.currentState?.removeItem(index, (context, animation) {
        return _buildItem(item, animation);
      }, duration: itemAnimationDuration);
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(tr.pages.submissions),
      ),
      body: switch (state.submissions) {
        AsyncData(:final List<Submission> value) => AnimatedList(
          key: listKey,
          controller: scrollController,
          initialItemCount: value.length,
          itemBuilder: (BuildContext context, int index, Animation<double> animation) {
            final Submission submission = value[index];
            return _buildItem(submission, animation);
          },
        ),
        AsyncLoading() => const Center(child: CircularProgressIndicator()),
        AsyncError(:final Object error) => CenterError(error),
        _ => throw UnsupportedError("This will never happen"),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: state.submissions.hasValue ? () {
          ref.read(submissionListViewModelProvider.notifier).insertSubmission(SubmissionsCompanion.insert(
            id: randomString(22),
            due: DateTime.now().add(Duration(days: Random().nextInt(5))),
            title: "asdasdasd",
            details: "",
            dueDateOnly: false,
          ));
        } : null,
        child: Icon(Symbols.add),
      ),
    );
  }

  Widget _buildItem(Submission submission, Animation<double> animation) {
    return SubmissionItemAnimation(
      animation: animation,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SubmissionItem(
          title: submission.title,
          due: submission.due,
          onItemPressed: () {
          },
        ),
      ),
    );
  }

  void _scrollToNewlyInsertedItem(int index, ScrollController scrollController, double scrollerHeight) {
    final double itemHeight = SubmissionItem.height + 8.0; // padding of list item
    final double rangePadding = 16.0;
    final double itemOffset = itemHeight * index;
    final double nextItemOffset = itemHeight * (index + 1);
    final double scrollOffset = scrollController.offset;
    final double maxScrollExtent = scrollController.position.maxScrollExtent;

    final offsetLowerBound = (nextItemOffset - scrollerHeight + rangePadding).clamp(0, maxScrollExtent);
    final offsetUpperBound = (itemOffset - rangePadding).clamp(0, maxScrollExtent);
    if (scrollOffset < offsetLowerBound || scrollOffset > offsetUpperBound) {
      scrollController.animateTo(
        scrollOffset.clamp(offsetLowerBound, offsetUpperBound).toDouble(),
        duration: Duration(milliseconds: 300),
        curve: Easing.standardDecelerate,
      );
    }
  }
}

String randomString(int length) {
  const String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  final Random rnd = Random();
  return String.fromCharCodes(Iterable.generate(
    length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),
  ));
}
