// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmissionListState {
  AsyncValue<List<Submission>> get submissions =>
      throw _privateConstructorUsedError;
  VoidCallback? get onItemInserted => throw _privateConstructorUsedError;
  VoidCallback? get onItemRemoved => throw _privateConstructorUsedError;

  /// Create a copy of SubmissionListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmissionListStateCopyWith<SubmissionListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionListStateCopyWith<$Res> {
  factory $SubmissionListStateCopyWith(
    SubmissionListState value,
    $Res Function(SubmissionListState) then,
  ) = _$SubmissionListStateCopyWithImpl<$Res, SubmissionListState>;
  @useResult
  $Res call({
    AsyncValue<List<Submission>> submissions,
    VoidCallback? onItemInserted,
    VoidCallback? onItemRemoved,
  });
}

/// @nodoc
class _$SubmissionListStateCopyWithImpl<$Res, $Val extends SubmissionListState>
    implements $SubmissionListStateCopyWith<$Res> {
  _$SubmissionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmissionListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissions = null,
    Object? onItemInserted = freezed,
    Object? onItemRemoved = freezed,
  }) {
    return _then(
      _value.copyWith(
            submissions:
                null == submissions
                    ? _value.submissions
                    : submissions // ignore: cast_nullable_to_non_nullable
                        as AsyncValue<List<Submission>>,
            onItemInserted:
                freezed == onItemInserted
                    ? _value.onItemInserted
                    : onItemInserted // ignore: cast_nullable_to_non_nullable
                        as VoidCallback?,
            onItemRemoved:
                freezed == onItemRemoved
                    ? _value.onItemRemoved
                    : onItemRemoved // ignore: cast_nullable_to_non_nullable
                        as VoidCallback?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmissionListStateImplCopyWith<$Res>
    implements $SubmissionListStateCopyWith<$Res> {
  factory _$$SubmissionListStateImplCopyWith(
    _$SubmissionListStateImpl value,
    $Res Function(_$SubmissionListStateImpl) then,
  ) = __$$SubmissionListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AsyncValue<List<Submission>> submissions,
    VoidCallback? onItemInserted,
    VoidCallback? onItemRemoved,
  });
}

/// @nodoc
class __$$SubmissionListStateImplCopyWithImpl<$Res>
    extends _$SubmissionListStateCopyWithImpl<$Res, _$SubmissionListStateImpl>
    implements _$$SubmissionListStateImplCopyWith<$Res> {
  __$$SubmissionListStateImplCopyWithImpl(
    _$SubmissionListStateImpl _value,
    $Res Function(_$SubmissionListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmissionListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissions = null,
    Object? onItemInserted = freezed,
    Object? onItemRemoved = freezed,
  }) {
    return _then(
      _$SubmissionListStateImpl(
        submissions:
            null == submissions
                ? _value.submissions
                : submissions // ignore: cast_nullable_to_non_nullable
                    as AsyncValue<List<Submission>>,
        onItemInserted:
            freezed == onItemInserted
                ? _value.onItemInserted
                : onItemInserted // ignore: cast_nullable_to_non_nullable
                    as VoidCallback?,
        onItemRemoved:
            freezed == onItemRemoved
                ? _value.onItemRemoved
                : onItemRemoved // ignore: cast_nullable_to_non_nullable
                    as VoidCallback?,
      ),
    );
  }
}

/// @nodoc

class _$SubmissionListStateImpl implements _SubmissionListState {
  const _$SubmissionListStateImpl({
    required this.submissions,
    this.onItemInserted,
    this.onItemRemoved,
  });

  @override
  final AsyncValue<List<Submission>> submissions;
  @override
  final VoidCallback? onItemInserted;
  @override
  final VoidCallback? onItemRemoved;

  @override
  String toString() {
    return 'SubmissionListState(submissions: $submissions, onItemInserted: $onItemInserted, onItemRemoved: $onItemRemoved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionListStateImpl &&
            (identical(other.submissions, submissions) ||
                other.submissions == submissions) &&
            (identical(other.onItemInserted, onItemInserted) ||
                other.onItemInserted == onItemInserted) &&
            (identical(other.onItemRemoved, onItemRemoved) ||
                other.onItemRemoved == onItemRemoved));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, submissions, onItemInserted, onItemRemoved);

  /// Create a copy of SubmissionListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionListStateImplCopyWith<_$SubmissionListStateImpl> get copyWith =>
      __$$SubmissionListStateImplCopyWithImpl<_$SubmissionListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmissionListState implements SubmissionListState {
  const factory _SubmissionListState({
    required final AsyncValue<List<Submission>> submissions,
    final VoidCallback? onItemInserted,
    final VoidCallback? onItemRemoved,
  }) = _$SubmissionListStateImpl;

  @override
  AsyncValue<List<Submission>> get submissions;
  @override
  VoidCallback? get onItemInserted;
  @override
  VoidCallback? get onItemRemoved;

  /// Create a copy of SubmissionListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmissionListStateImplCopyWith<_$SubmissionListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
