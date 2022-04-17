// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserScoreTearOff {
  const _$UserScoreTearOff();

  _UserScore call(
      {required UniqueId gameId,
      required UniqueId gamifierUserId,
      required int level,
      required KtList<GameTodo> gameTodos}) {
    return _UserScore(
      gameId: gameId,
      gamifierUserId: gamifierUserId,
      level: level,
      gameTodos: gameTodos,
    );
  }
}

/// @nodoc
const $UserScore = _$UserScoreTearOff();

/// @nodoc
mixin _$UserScore {
  UniqueId get gameId => throw _privateConstructorUsedError;
  UniqueId get gamifierUserId => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  KtList<GameTodo> get gameTodos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserScoreCopyWith<UserScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScoreCopyWith<$Res> {
  factory $UserScoreCopyWith(UserScore value, $Res Function(UserScore) then) =
      _$UserScoreCopyWithImpl<$Res>;
  $Res call(
      {UniqueId gameId,
      UniqueId gamifierUserId,
      int level,
      KtList<GameTodo> gameTodos});
}

/// @nodoc
class _$UserScoreCopyWithImpl<$Res> implements $UserScoreCopyWith<$Res> {
  _$UserScoreCopyWithImpl(this._value, this._then);

  final UserScore _value;
  // ignore: unused_field
  final $Res Function(UserScore) _then;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gamifierUserId = freezed,
    Object? level = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      gamifierUserId: gamifierUserId == freezed
          ? _value.gamifierUserId
          : gamifierUserId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodo>,
    ));
  }
}

/// @nodoc
abstract class _$UserScoreCopyWith<$Res> implements $UserScoreCopyWith<$Res> {
  factory _$UserScoreCopyWith(
          _UserScore value, $Res Function(_UserScore) then) =
      __$UserScoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId gameId,
      UniqueId gamifierUserId,
      int level,
      KtList<GameTodo> gameTodos});
}

/// @nodoc
class __$UserScoreCopyWithImpl<$Res> extends _$UserScoreCopyWithImpl<$Res>
    implements _$UserScoreCopyWith<$Res> {
  __$UserScoreCopyWithImpl(_UserScore _value, $Res Function(_UserScore) _then)
      : super(_value, (v) => _then(v as _UserScore));

  @override
  _UserScore get _value => super._value as _UserScore;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gamifierUserId = freezed,
    Object? level = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_UserScore(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      gamifierUserId: gamifierUserId == freezed
          ? _value.gamifierUserId
          : gamifierUserId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodo>,
    ));
  }
}

/// @nodoc

class _$_UserScore implements _UserScore {
  const _$_UserScore(
      {required this.gameId,
      required this.gamifierUserId,
      required this.level,
      required this.gameTodos});

  @override
  final UniqueId gameId;
  @override
  final UniqueId gamifierUserId;
  @override
  final int level;
  @override
  final KtList<GameTodo> gameTodos;

  @override
  String toString() {
    return 'UserScore(gameId: $gameId, gamifierUserId: $gamifierUserId, level: $level, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserScore &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality()
                .equals(other.gamifierUserId, gamifierUserId) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.gameTodos, gameTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(gamifierUserId),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(gameTodos));

  @JsonKey(ignore: true)
  @override
  _$UserScoreCopyWith<_UserScore> get copyWith =>
      __$UserScoreCopyWithImpl<_UserScore>(this, _$identity);
}

abstract class _UserScore implements UserScore {
  const factory _UserScore(
      {required UniqueId gameId,
      required UniqueId gamifierUserId,
      required int level,
      required KtList<GameTodo> gameTodos}) = _$_UserScore;

  @override
  UniqueId get gameId;
  @override
  UniqueId get gamifierUserId;
  @override
  int get level;
  @override
  KtList<GameTodo> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$UserScoreCopyWith<_UserScore> get copyWith =>
      throw _privateConstructorUsedError;
}
