// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameKeyTearOff {
  const _$GameKeyTearOff();

  _GameKey call(
      {required UniqueId gameId,
      required String gameName,
      required String creater,
      required String createrId}) {
    return _GameKey(
      gameId: gameId,
      gameName: gameName,
      creater: creater,
      createrId: createrId,
    );
  }
}

/// @nodoc
const $GameKey = _$GameKeyTearOff();

/// @nodoc
mixin _$GameKey {
  UniqueId get gameId => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;
  String get creater => throw _privateConstructorUsedError;
  String get createrId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameKeyCopyWith<GameKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameKeyCopyWith<$Res> {
  factory $GameKeyCopyWith(GameKey value, $Res Function(GameKey) then) =
      _$GameKeyCopyWithImpl<$Res>;
  $Res call(
      {UniqueId gameId, String gameName, String creater, String createrId});
}

/// @nodoc
class _$GameKeyCopyWithImpl<$Res> implements $GameKeyCopyWith<$Res> {
  _$GameKeyCopyWithImpl(this._value, this._then);

  final GameKey _value;
  // ignore: unused_field
  final $Res Function(GameKey) _then;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gameName = freezed,
    Object? creater = freezed,
    Object? createrId = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      creater: creater == freezed
          ? _value.creater
          : creater // ignore: cast_nullable_to_non_nullable
              as String,
      createrId: createrId == freezed
          ? _value.createrId
          : createrId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GameKeyCopyWith<$Res> implements $GameKeyCopyWith<$Res> {
  factory _$GameKeyCopyWith(_GameKey value, $Res Function(_GameKey) then) =
      __$GameKeyCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId gameId, String gameName, String creater, String createrId});
}

/// @nodoc
class __$GameKeyCopyWithImpl<$Res> extends _$GameKeyCopyWithImpl<$Res>
    implements _$GameKeyCopyWith<$Res> {
  __$GameKeyCopyWithImpl(_GameKey _value, $Res Function(_GameKey) _then)
      : super(_value, (v) => _then(v as _GameKey));

  @override
  _GameKey get _value => super._value as _GameKey;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gameName = freezed,
    Object? creater = freezed,
    Object? createrId = freezed,
  }) {
    return _then(_GameKey(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      creater: creater == freezed
          ? _value.creater
          : creater // ignore: cast_nullable_to_non_nullable
              as String,
      createrId: createrId == freezed
          ? _value.createrId
          : createrId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GameKey implements _GameKey {
  const _$_GameKey(
      {required this.gameId,
      required this.gameName,
      required this.creater,
      required this.createrId});

  @override
  final UniqueId gameId;
  @override
  final String gameName;
  @override
  final String creater;
  @override
  final String createrId;

  @override
  String toString() {
    return 'GameKey(gameId: $gameId, gameName: $gameName, creater: $creater, createrId: $createrId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameKey &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality().equals(other.gameName, gameName) &&
            const DeepCollectionEquality().equals(other.creater, creater) &&
            const DeepCollectionEquality().equals(other.createrId, createrId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(gameName),
      const DeepCollectionEquality().hash(creater),
      const DeepCollectionEquality().hash(createrId));

  @JsonKey(ignore: true)
  @override
  _$GameKeyCopyWith<_GameKey> get copyWith =>
      __$GameKeyCopyWithImpl<_GameKey>(this, _$identity);
}

abstract class _GameKey implements GameKey {
  const factory _GameKey(
      {required UniqueId gameId,
      required String gameName,
      required String creater,
      required String createrId}) = _$_GameKey;

  @override
  UniqueId get gameId;
  @override
  String get gameName;
  @override
  String get creater;
  @override
  String get createrId;
  @override
  @JsonKey(ignore: true)
  _$GameKeyCopyWith<_GameKey> get copyWith =>
      throw _privateConstructorUsedError;
}
