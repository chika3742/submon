// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_time_picker_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DateTimePickerValue {
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get respectDateOnly => throw _privateConstructorUsedError;
  RepeatType get repeatType => throw _privateConstructorUsedError;

  /// Create a copy of DateTimePickerValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateTimePickerValueCopyWith<DateTimePickerValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimePickerValueCopyWith<$Res> {
  factory $DateTimePickerValueCopyWith(
    DateTimePickerValue value,
    $Res Function(DateTimePickerValue) then,
  ) = _$DateTimePickerValueCopyWithImpl<$Res, DateTimePickerValue>;
  @useResult
  $Res call({DateTime dateTime, bool respectDateOnly, RepeatType repeatType});
}

/// @nodoc
class _$DateTimePickerValueCopyWithImpl<$Res, $Val extends DateTimePickerValue>
    implements $DateTimePickerValueCopyWith<$Res> {
  _$DateTimePickerValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateTimePickerValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? respectDateOnly = null,
    Object? repeatType = null,
  }) {
    return _then(
      _value.copyWith(
            dateTime:
                null == dateTime
                    ? _value.dateTime
                    : dateTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            respectDateOnly:
                null == respectDateOnly
                    ? _value.respectDateOnly
                    : respectDateOnly // ignore: cast_nullable_to_non_nullable
                        as bool,
            repeatType:
                null == repeatType
                    ? _value.repeatType
                    : repeatType // ignore: cast_nullable_to_non_nullable
                        as RepeatType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DateTimePickerValueImplCopyWith<$Res>
    implements $DateTimePickerValueCopyWith<$Res> {
  factory _$$DateTimePickerValueImplCopyWith(
    _$DateTimePickerValueImpl value,
    $Res Function(_$DateTimePickerValueImpl) then,
  ) = __$$DateTimePickerValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, bool respectDateOnly, RepeatType repeatType});
}

/// @nodoc
class __$$DateTimePickerValueImplCopyWithImpl<$Res>
    extends _$DateTimePickerValueCopyWithImpl<$Res, _$DateTimePickerValueImpl>
    implements _$$DateTimePickerValueImplCopyWith<$Res> {
  __$$DateTimePickerValueImplCopyWithImpl(
    _$DateTimePickerValueImpl _value,
    $Res Function(_$DateTimePickerValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DateTimePickerValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? respectDateOnly = null,
    Object? repeatType = null,
  }) {
    return _then(
      _$DateTimePickerValueImpl(
        dateTime:
            null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        respectDateOnly:
            null == respectDateOnly
                ? _value.respectDateOnly
                : respectDateOnly // ignore: cast_nullable_to_non_nullable
                    as bool,
        repeatType:
            null == repeatType
                ? _value.repeatType
                : repeatType // ignore: cast_nullable_to_non_nullable
                    as RepeatType,
      ),
    );
  }
}

/// @nodoc

class _$DateTimePickerValueImpl implements _DateTimePickerValue {
  const _$DateTimePickerValueImpl({
    required this.dateTime,
    required this.respectDateOnly,
    required this.repeatType,
  });

  @override
  final DateTime dateTime;
  @override
  final bool respectDateOnly;
  @override
  final RepeatType repeatType;

  @override
  String toString() {
    return 'DateTimePickerValue(dateTime: $dateTime, respectDateOnly: $respectDateOnly, repeatType: $repeatType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimePickerValueImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.respectDateOnly, respectDateOnly) ||
                other.respectDateOnly == respectDateOnly) &&
            (identical(other.repeatType, repeatType) ||
                other.repeatType == repeatType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, respectDateOnly, repeatType);

  /// Create a copy of DateTimePickerValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimePickerValueImplCopyWith<_$DateTimePickerValueImpl> get copyWith =>
      __$$DateTimePickerValueImplCopyWithImpl<_$DateTimePickerValueImpl>(
        this,
        _$identity,
      );
}

abstract class _DateTimePickerValue implements DateTimePickerValue {
  const factory _DateTimePickerValue({
    required final DateTime dateTime,
    required final bool respectDateOnly,
    required final RepeatType repeatType,
  }) = _$DateTimePickerValueImpl;

  @override
  DateTime get dateTime;
  @override
  bool get respectDateOnly;
  @override
  RepeatType get repeatType;

  /// Create a copy of DateTimePickerValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateTimePickerValueImplCopyWith<_$DateTimePickerValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
