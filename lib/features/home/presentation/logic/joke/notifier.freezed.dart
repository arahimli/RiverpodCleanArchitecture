// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeState {
  bool get isLoading => throw _privateConstructorUsedError;
  JokeEntity? get jokeEntity => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeStateCopyWith<JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeStateCopyWith<$Res> {
  factory $JokeStateCopyWith(JokeState value, $Res Function(JokeState) then) =
      _$JokeStateCopyWithImpl<$Res, JokeState>;
  @useResult
  $Res call({bool isLoading, JokeEntity? jokeEntity, Failure? failure});
}

/// @nodoc
class _$JokeStateCopyWithImpl<$Res, $Val extends JokeState>
    implements $JokeStateCopyWith<$Res> {
  _$JokeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? jokeEntity = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      jokeEntity: freezed == jokeEntity
          ? _value.jokeEntity
          : jokeEntity // ignore: cast_nullable_to_non_nullable
              as JokeEntity?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeStateCopyWith<$Res> implements $JokeStateCopyWith<$Res> {
  factory _$$_JokeStateCopyWith(
          _$_JokeState value, $Res Function(_$_JokeState) then) =
      __$$_JokeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, JokeEntity? jokeEntity, Failure? failure});
}

/// @nodoc
class __$$_JokeStateCopyWithImpl<$Res>
    extends _$JokeStateCopyWithImpl<$Res, _$_JokeState>
    implements _$$_JokeStateCopyWith<$Res> {
  __$$_JokeStateCopyWithImpl(
      _$_JokeState _value, $Res Function(_$_JokeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? jokeEntity = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_JokeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      jokeEntity: freezed == jokeEntity
          ? _value.jokeEntity
          : jokeEntity // ignore: cast_nullable_to_non_nullable
              as JokeEntity?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_JokeState extends _JokeState {
  const _$_JokeState({this.isLoading = true, this.jokeEntity, this.failure})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final JokeEntity? jokeEntity;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'JokeState(isLoading: $isLoading, jokeEntity: $jokeEntity, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.jokeEntity, jokeEntity) ||
                other.jokeEntity == jokeEntity) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, jokeEntity, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeStateCopyWith<_$_JokeState> get copyWith =>
      __$$_JokeStateCopyWithImpl<_$_JokeState>(this, _$identity);
}

abstract class _JokeState extends JokeState {
  const factory _JokeState(
      {final bool isLoading,
      final JokeEntity? jokeEntity,
      final Failure? failure}) = _$_JokeState;
  const _JokeState._() : super._();

  @override
  bool get isLoading;
  @override
  JokeEntity? get jokeEntity;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_JokeStateCopyWith<_$_JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
