// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flying_score_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlyingScoreEventTearOff {
  const _$FlyingScoreEventTearOff();

  _ScoreIn scoreIn(int score) {
    return _ScoreIn(
      score,
    );
  }
}

/// @nodoc
const $FlyingScoreEvent = _$FlyingScoreEventTearOff();

/// @nodoc
mixin _$FlyingScoreEvent {
  int get score => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score) scoreIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score)? scoreIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score)? scoreIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreIn value) scoreIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreIn value)? scoreIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreIn value)? scoreIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlyingScoreEventCopyWith<FlyingScoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlyingScoreEventCopyWith<$Res> {
  factory $FlyingScoreEventCopyWith(
          FlyingScoreEvent value, $Res Function(FlyingScoreEvent) then) =
      _$FlyingScoreEventCopyWithImpl<$Res>;
  $Res call({int score});
}

/// @nodoc
class _$FlyingScoreEventCopyWithImpl<$Res>
    implements $FlyingScoreEventCopyWith<$Res> {
  _$FlyingScoreEventCopyWithImpl(this._value, this._then);

  final FlyingScoreEvent _value;
  // ignore: unused_field
  final $Res Function(FlyingScoreEvent) _then;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScoreInCopyWith<$Res>
    implements $FlyingScoreEventCopyWith<$Res> {
  factory _$ScoreInCopyWith(_ScoreIn value, $Res Function(_ScoreIn) then) =
      __$ScoreInCopyWithImpl<$Res>;
  @override
  $Res call({int score});
}

/// @nodoc
class __$ScoreInCopyWithImpl<$Res> extends _$FlyingScoreEventCopyWithImpl<$Res>
    implements _$ScoreInCopyWith<$Res> {
  __$ScoreInCopyWithImpl(_ScoreIn _value, $Res Function(_ScoreIn) _then)
      : super(_value, (v) => _then(v as _ScoreIn));

  @override
  _ScoreIn get _value => super._value as _ScoreIn;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_ScoreIn(
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoreIn implements _ScoreIn {
  _$_ScoreIn(this.score);

  @override
  final int score;

  @override
  String toString() {
    return 'FlyingScoreEvent.scoreIn(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoreIn &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$ScoreInCopyWith<_ScoreIn> get copyWith =>
      __$ScoreInCopyWithImpl<_ScoreIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score) scoreIn,
  }) {
    return scoreIn(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score)? scoreIn,
  }) {
    return scoreIn?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score)? scoreIn,
    required TResult orElse(),
  }) {
    if (scoreIn != null) {
      return scoreIn(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoreIn value) scoreIn,
  }) {
    return scoreIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoreIn value)? scoreIn,
  }) {
    return scoreIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoreIn value)? scoreIn,
    required TResult orElse(),
  }) {
    if (scoreIn != null) {
      return scoreIn(this);
    }
    return orElse();
  }
}

abstract class _ScoreIn implements FlyingScoreEvent {
  factory _ScoreIn(int score) = _$_ScoreIn;

  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$ScoreInCopyWith<_ScoreIn> get copyWith =>
      throw _privateConstructorUsedError;
}
