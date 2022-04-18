// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameDetailsTearOff {
  const _$GameDetailsTearOff();

  _GameDetails call(
      {required Game game, required KtList<UserScore> usersScores}) {
    return _GameDetails(
      game: game,
      usersScores: usersScores,
    );
  }
}

/// @nodoc
const $GameDetails = _$GameDetailsTearOff();

/// @nodoc
mixin _$GameDetails {
  Game get game => throw _privateConstructorUsedError;
  KtList<UserScore> get usersScores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDetailsCopyWith<GameDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsCopyWith<$Res> {
  factory $GameDetailsCopyWith(
          GameDetails value, $Res Function(GameDetails) then) =
      _$GameDetailsCopyWithImpl<$Res>;
  $Res call({Game game, KtList<UserScore> usersScores});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$GameDetailsCopyWithImpl<$Res> implements $GameDetailsCopyWith<$Res> {
  _$GameDetailsCopyWithImpl(this._value, this._then);

  final GameDetails _value;
  // ignore: unused_field
  final $Res Function(GameDetails) _then;

  @override
  $Res call({
    Object? game = freezed,
    Object? usersScores = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      usersScores: usersScores == freezed
          ? _value.usersScores
          : usersScores // ignore: cast_nullable_to_non_nullable
              as KtList<UserScore>,
    ));
  }

  @override
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc
abstract class _$GameDetailsCopyWith<$Res>
    implements $GameDetailsCopyWith<$Res> {
  factory _$GameDetailsCopyWith(
          _GameDetails value, $Res Function(_GameDetails) then) =
      __$GameDetailsCopyWithImpl<$Res>;
  @override
  $Res call({Game game, KtList<UserScore> usersScores});

  @override
  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$GameDetailsCopyWithImpl<$Res> extends _$GameDetailsCopyWithImpl<$Res>
    implements _$GameDetailsCopyWith<$Res> {
  __$GameDetailsCopyWithImpl(
      _GameDetails _value, $Res Function(_GameDetails) _then)
      : super(_value, (v) => _then(v as _GameDetails));

  @override
  _GameDetails get _value => super._value as _GameDetails;

  @override
  $Res call({
    Object? game = freezed,
    Object? usersScores = freezed,
  }) {
    return _then(_GameDetails(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      usersScores: usersScores == freezed
          ? _value.usersScores
          : usersScores // ignore: cast_nullable_to_non_nullable
              as KtList<UserScore>,
    ));
  }
}

/// @nodoc

class _$_GameDetails implements _GameDetails {
  const _$_GameDetails({required this.game, required this.usersScores});

  @override
  final Game game;
  @override
  final KtList<UserScore> usersScores;

  @override
  String toString() {
    return 'GameDetails(game: $game, usersScores: $usersScores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDetails &&
            const DeepCollectionEquality().equals(other.game, game) &&
            const DeepCollectionEquality()
                .equals(other.usersScores, usersScores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(game),
      const DeepCollectionEquality().hash(usersScores));

  @JsonKey(ignore: true)
  @override
  _$GameDetailsCopyWith<_GameDetails> get copyWith =>
      __$GameDetailsCopyWithImpl<_GameDetails>(this, _$identity);
}

abstract class _GameDetails implements GameDetails {
  const factory _GameDetails(
      {required Game game,
      required KtList<UserScore> usersScores}) = _$_GameDetails;

  @override
  Game get game;
  @override
  KtList<UserScore> get usersScores;
  @override
  @JsonKey(ignore: true)
  _$GameDetailsCopyWith<_GameDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
