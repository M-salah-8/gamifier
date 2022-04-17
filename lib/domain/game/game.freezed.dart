// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameTearOff {
  const _$GameTearOff();

  _Game call(
      {required UniqueId id,
      required UniqueId admin,
      required String name,
      required int noOfUsers,
      required KtList<GameTodo> gameTodos}) {
    return _Game(
      id: id,
      admin: admin,
      name: name,
      noOfUsers: noOfUsers,
      gameTodos: gameTodos,
    );
  }
}

/// @nodoc
const $Game = _$GameTearOff();

/// @nodoc
mixin _$Game {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get admin => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get noOfUsers => throw _privateConstructorUsedError;
  KtList<GameTodo> get gameTodos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId admin,
      String name,
      int noOfUsers,
      KtList<GameTodo> gameTodos});
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  final Game _value;
  // ignore: unused_field
  final $Res Function(Game) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
    Object? name = freezed,
    Object? noOfUsers = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noOfUsers: noOfUsers == freezed
          ? _value.noOfUsers
          : noOfUsers // ignore: cast_nullable_to_non_nullable
              as int,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodo>,
    ));
  }
}

/// @nodoc
abstract class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId admin,
      String name,
      int noOfUsers,
      KtList<GameTodo> gameTodos});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
    Object? name = freezed,
    Object? noOfUsers = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_Game(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noOfUsers: noOfUsers == freezed
          ? _value.noOfUsers
          : noOfUsers // ignore: cast_nullable_to_non_nullable
              as int,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodo>,
    ));
  }
}

/// @nodoc

class _$_Game implements _Game {
  const _$_Game(
      {required this.id,
      required this.admin,
      required this.name,
      required this.noOfUsers,
      required this.gameTodos});

  @override
  final UniqueId id;
  @override
  final UniqueId admin;
  @override
  final String name;
  @override
  final int noOfUsers;
  @override
  final KtList<GameTodo> gameTodos;

  @override
  String toString() {
    return 'Game(id: $id, admin: $admin, name: $name, noOfUsers: $noOfUsers, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Game &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.admin, admin) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.noOfUsers, noOfUsers) &&
            const DeepCollectionEquality().equals(other.gameTodos, gameTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(admin),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(noOfUsers),
      const DeepCollectionEquality().hash(gameTodos));

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);
}

abstract class _Game implements Game {
  const factory _Game(
      {required UniqueId id,
      required UniqueId admin,
      required String name,
      required int noOfUsers,
      required KtList<GameTodo> gameTodos}) = _$_Game;

  @override
  UniqueId get id;
  @override
  UniqueId get admin;
  @override
  String get name;
  @override
  int get noOfUsers;
  @override
  KtList<GameTodo> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}
