// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_games_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserGamesListTearOff {
  const _$UserGamesListTearOff();

  _UserGamesList call(
      {required UniqueId userId, required KtList<GameKey> gamekeys}) {
    return _UserGamesList(
      userId: userId,
      gamekeys: gamekeys,
    );
  }
}

/// @nodoc
const $UserGamesList = _$UserGamesListTearOff();

/// @nodoc
mixin _$UserGamesList {
  UniqueId get userId => throw _privateConstructorUsedError;
  KtList<GameKey> get gamekeys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserGamesListCopyWith<UserGamesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGamesListCopyWith<$Res> {
  factory $UserGamesListCopyWith(
          UserGamesList value, $Res Function(UserGamesList) then) =
      _$UserGamesListCopyWithImpl<$Res>;
  $Res call({UniqueId userId, KtList<GameKey> gamekeys});
}

/// @nodoc
class _$UserGamesListCopyWithImpl<$Res>
    implements $UserGamesListCopyWith<$Res> {
  _$UserGamesListCopyWithImpl(this._value, this._then);

  final UserGamesList _value;
  // ignore: unused_field
  final $Res Function(UserGamesList) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? gamekeys = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      gamekeys: gamekeys == freezed
          ? _value.gamekeys
          : gamekeys // ignore: cast_nullable_to_non_nullable
              as KtList<GameKey>,
    ));
  }
}

/// @nodoc
abstract class _$UserGamesListCopyWith<$Res>
    implements $UserGamesListCopyWith<$Res> {
  factory _$UserGamesListCopyWith(
          _UserGamesList value, $Res Function(_UserGamesList) then) =
      __$UserGamesListCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId userId, KtList<GameKey> gamekeys});
}

/// @nodoc
class __$UserGamesListCopyWithImpl<$Res>
    extends _$UserGamesListCopyWithImpl<$Res>
    implements _$UserGamesListCopyWith<$Res> {
  __$UserGamesListCopyWithImpl(
      _UserGamesList _value, $Res Function(_UserGamesList) _then)
      : super(_value, (v) => _then(v as _UserGamesList));

  @override
  _UserGamesList get _value => super._value as _UserGamesList;

  @override
  $Res call({
    Object? userId = freezed,
    Object? gamekeys = freezed,
  }) {
    return _then(_UserGamesList(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      gamekeys: gamekeys == freezed
          ? _value.gamekeys
          : gamekeys // ignore: cast_nullable_to_non_nullable
              as KtList<GameKey>,
    ));
  }
}

/// @nodoc

class _$_UserGamesList implements _UserGamesList {
  const _$_UserGamesList({required this.userId, required this.gamekeys});

  @override
  final UniqueId userId;
  @override
  final KtList<GameKey> gamekeys;

  @override
  String toString() {
    return 'UserGamesList(userId: $userId, gamekeys: $gamekeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGamesList &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.gamekeys, gamekeys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(gamekeys));

  @JsonKey(ignore: true)
  @override
  _$UserGamesListCopyWith<_UserGamesList> get copyWith =>
      __$UserGamesListCopyWithImpl<_UserGamesList>(this, _$identity);
}

abstract class _UserGamesList implements UserGamesList {
  const factory _UserGamesList(
      {required UniqueId userId,
      required KtList<GameKey> gamekeys}) = _$_UserGamesList;

  @override
  UniqueId get userId;
  @override
  KtList<GameKey> get gamekeys;
  @override
  @JsonKey(ignore: true)
  _$UserGamesListCopyWith<_UserGamesList> get copyWith =>
      throw _privateConstructorUsedError;
}
