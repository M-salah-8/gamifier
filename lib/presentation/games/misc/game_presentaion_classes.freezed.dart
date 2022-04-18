// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_presentaion_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GamePrimitiveTearOff {
  const _$GamePrimitiveTearOff();

  _GamePrimitive call(
      {required String id,
      required String admin,
      required List<String> usersId,
      required String name,
      required int noOfUsers,
      required List<GameTodoPrimitive> gameTodos}) {
    return _GamePrimitive(
      id: id,
      admin: admin,
      usersId: usersId,
      name: name,
      noOfUsers: noOfUsers,
      gameTodos: gameTodos,
    );
  }
}

/// @nodoc
const $GamePrimitive = _$GamePrimitiveTearOff();

/// @nodoc
mixin _$GamePrimitive {
  String get id => throw _privateConstructorUsedError;
  String get admin => throw _privateConstructorUsedError;
  List<String> get usersId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get noOfUsers => throw _privateConstructorUsedError;
  List<GameTodoPrimitive> get gameTodos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamePrimitiveCopyWith<GamePrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePrimitiveCopyWith<$Res> {
  factory $GamePrimitiveCopyWith(
          GamePrimitive value, $Res Function(GamePrimitive) then) =
      _$GamePrimitiveCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String admin,
      List<String> usersId,
      String name,
      int noOfUsers,
      List<GameTodoPrimitive> gameTodos});
}

/// @nodoc
class _$GamePrimitiveCopyWithImpl<$Res>
    implements $GamePrimitiveCopyWith<$Res> {
  _$GamePrimitiveCopyWithImpl(this._value, this._then);

  final GamePrimitive _value;
  // ignore: unused_field
  final $Res Function(GamePrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
    Object? usersId = freezed,
    Object? name = freezed,
    Object? noOfUsers = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: usersId == freezed
          ? _value.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as List<GameTodoPrimitive>,
    ));
  }
}

/// @nodoc
abstract class _$GamePrimitiveCopyWith<$Res>
    implements $GamePrimitiveCopyWith<$Res> {
  factory _$GamePrimitiveCopyWith(
          _GamePrimitive value, $Res Function(_GamePrimitive) then) =
      __$GamePrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String admin,
      List<String> usersId,
      String name,
      int noOfUsers,
      List<GameTodoPrimitive> gameTodos});
}

/// @nodoc
class __$GamePrimitiveCopyWithImpl<$Res>
    extends _$GamePrimitiveCopyWithImpl<$Res>
    implements _$GamePrimitiveCopyWith<$Res> {
  __$GamePrimitiveCopyWithImpl(
      _GamePrimitive _value, $Res Function(_GamePrimitive) _then)
      : super(_value, (v) => _then(v as _GamePrimitive));

  @override
  _GamePrimitive get _value => super._value as _GamePrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
    Object? usersId = freezed,
    Object? name = freezed,
    Object? noOfUsers = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_GamePrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: usersId == freezed
          ? _value.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as List<GameTodoPrimitive>,
    ));
  }
}

/// @nodoc

class _$_GamePrimitive extends _GamePrimitive {
  const _$_GamePrimitive(
      {required this.id,
      required this.admin,
      required this.usersId,
      required this.name,
      required this.noOfUsers,
      required this.gameTodos})
      : super._();

  @override
  final String id;
  @override
  final String admin;
  @override
  final List<String> usersId;
  @override
  final String name;
  @override
  final int noOfUsers;
  @override
  final List<GameTodoPrimitive> gameTodos;

  @override
  String toString() {
    return 'GamePrimitive(id: $id, admin: $admin, usersId: $usersId, name: $name, noOfUsers: $noOfUsers, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamePrimitive &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.admin, admin) &&
            const DeepCollectionEquality().equals(other.usersId, usersId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.noOfUsers, noOfUsers) &&
            const DeepCollectionEquality().equals(other.gameTodos, gameTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(admin),
      const DeepCollectionEquality().hash(usersId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(noOfUsers),
      const DeepCollectionEquality().hash(gameTodos));

  @JsonKey(ignore: true)
  @override
  _$GamePrimitiveCopyWith<_GamePrimitive> get copyWith =>
      __$GamePrimitiveCopyWithImpl<_GamePrimitive>(this, _$identity);
}

abstract class _GamePrimitive extends GamePrimitive {
  const factory _GamePrimitive(
      {required String id,
      required String admin,
      required List<String> usersId,
      required String name,
      required int noOfUsers,
      required List<GameTodoPrimitive> gameTodos}) = _$_GamePrimitive;
  const _GamePrimitive._() : super._();

  @override
  String get id;
  @override
  String get admin;
  @override
  List<String> get usersId;
  @override
  String get name;
  @override
  int get noOfUsers;
  @override
  List<GameTodoPrimitive> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$GamePrimitiveCopyWith<_GamePrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameTodoPrimitiveTearOff {
  const _$GameTodoPrimitiveTearOff();

  _GameTodoPrimitive call(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) {
    return _GameTodoPrimitive(
      id: id,
      todoName: todoName,
      times: times,
      points: points,
      done: done,
    );
  }
}

/// @nodoc
const $GameTodoPrimitive = _$GameTodoPrimitiveTearOff();

/// @nodoc
mixin _$GameTodoPrimitive {
  String get id => throw _privateConstructorUsedError;
  String get todoName => throw _privateConstructorUsedError;
  int get times => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameTodoPrimitiveCopyWith<GameTodoPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTodoPrimitiveCopyWith<$Res> {
  factory $GameTodoPrimitiveCopyWith(
          GameTodoPrimitive value, $Res Function(GameTodoPrimitive) then) =
      _$GameTodoPrimitiveCopyWithImpl<$Res>;
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class _$GameTodoPrimitiveCopyWithImpl<$Res>
    implements $GameTodoPrimitiveCopyWith<$Res> {
  _$GameTodoPrimitiveCopyWithImpl(this._value, this._then);

  final GameTodoPrimitive _value;
  // ignore: unused_field
  final $Res Function(GameTodoPrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? todoName = freezed,
    Object? times = freezed,
    Object? points = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      todoName: todoName == freezed
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GameTodoPrimitiveCopyWith<$Res>
    implements $GameTodoPrimitiveCopyWith<$Res> {
  factory _$GameTodoPrimitiveCopyWith(
          _GameTodoPrimitive value, $Res Function(_GameTodoPrimitive) then) =
      __$GameTodoPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class __$GameTodoPrimitiveCopyWithImpl<$Res>
    extends _$GameTodoPrimitiveCopyWithImpl<$Res>
    implements _$GameTodoPrimitiveCopyWith<$Res> {
  __$GameTodoPrimitiveCopyWithImpl(
      _GameTodoPrimitive _value, $Res Function(_GameTodoPrimitive) _then)
      : super(_value, (v) => _then(v as _GameTodoPrimitive));

  @override
  _GameTodoPrimitive get _value => super._value as _GameTodoPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? todoName = freezed,
    Object? times = freezed,
    Object? points = freezed,
    Object? done = freezed,
  }) {
    return _then(_GameTodoPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      todoName: todoName == freezed
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      times: times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameTodoPrimitive extends _GameTodoPrimitive {
  const _$_GameTodoPrimitive(
      {required this.id,
      required this.todoName,
      required this.times,
      required this.points,
      required this.done})
      : super._();

  @override
  final String id;
  @override
  final String todoName;
  @override
  final int times;
  @override
  final int points;
  @override
  final bool done;

  @override
  String toString() {
    return 'GameTodoPrimitive(id: $id, todoName: $todoName, times: $times, points: $points, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameTodoPrimitive &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.todoName, todoName) &&
            const DeepCollectionEquality().equals(other.times, times) &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(todoName),
      const DeepCollectionEquality().hash(times),
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$GameTodoPrimitiveCopyWith<_GameTodoPrimitive> get copyWith =>
      __$GameTodoPrimitiveCopyWithImpl<_GameTodoPrimitive>(this, _$identity);
}

abstract class _GameTodoPrimitive extends GameTodoPrimitive {
  const factory _GameTodoPrimitive(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) = _$_GameTodoPrimitive;
  const _GameTodoPrimitive._() : super._();

  @override
  String get id;
  @override
  String get todoName;
  @override
  int get times;
  @override
  int get points;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$GameTodoPrimitiveCopyWith<_GameTodoPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserScorePrimitiveTearOff {
  const _$UserScorePrimitiveTearOff();

  _UserScorePrimitive call(
      {required String gameId,
      required String gamifierUserId,
      required String userName,
      required int level,
      required List<GameTodoPrimitive> gameTodos}) {
    return _UserScorePrimitive(
      gameId: gameId,
      gamifierUserId: gamifierUserId,
      userName: userName,
      level: level,
      gameTodos: gameTodos,
    );
  }
}

/// @nodoc
const $UserScorePrimitive = _$UserScorePrimitiveTearOff();

/// @nodoc
mixin _$UserScorePrimitive {
  String get gameId => throw _privateConstructorUsedError;
  String get gamifierUserId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  List<GameTodoPrimitive> get gameTodos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserScorePrimitiveCopyWith<UserScorePrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScorePrimitiveCopyWith<$Res> {
  factory $UserScorePrimitiveCopyWith(
          UserScorePrimitive value, $Res Function(UserScorePrimitive) then) =
      _$UserScorePrimitiveCopyWithImpl<$Res>;
  $Res call(
      {String gameId,
      String gamifierUserId,
      String userName,
      int level,
      List<GameTodoPrimitive> gameTodos});
}

/// @nodoc
class _$UserScorePrimitiveCopyWithImpl<$Res>
    implements $UserScorePrimitiveCopyWith<$Res> {
  _$UserScorePrimitiveCopyWithImpl(this._value, this._then);

  final UserScorePrimitive _value;
  // ignore: unused_field
  final $Res Function(UserScorePrimitive) _then;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gamifierUserId = freezed,
    Object? userName = freezed,
    Object? level = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gamifierUserId: gamifierUserId == freezed
          ? _value.gamifierUserId
          : gamifierUserId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as List<GameTodoPrimitive>,
    ));
  }
}

/// @nodoc
abstract class _$UserScorePrimitiveCopyWith<$Res>
    implements $UserScorePrimitiveCopyWith<$Res> {
  factory _$UserScorePrimitiveCopyWith(
          _UserScorePrimitive value, $Res Function(_UserScorePrimitive) then) =
      __$UserScorePrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gameId,
      String gamifierUserId,
      String userName,
      int level,
      List<GameTodoPrimitive> gameTodos});
}

/// @nodoc
class __$UserScorePrimitiveCopyWithImpl<$Res>
    extends _$UserScorePrimitiveCopyWithImpl<$Res>
    implements _$UserScorePrimitiveCopyWith<$Res> {
  __$UserScorePrimitiveCopyWithImpl(
      _UserScorePrimitive _value, $Res Function(_UserScorePrimitive) _then)
      : super(_value, (v) => _then(v as _UserScorePrimitive));

  @override
  _UserScorePrimitive get _value => super._value as _UserScorePrimitive;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gamifierUserId = freezed,
    Object? userName = freezed,
    Object? level = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_UserScorePrimitive(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gamifierUserId: gamifierUserId == freezed
          ? _value.gamifierUserId
          : gamifierUserId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as List<GameTodoPrimitive>,
    ));
  }
}

/// @nodoc

class _$_UserScorePrimitive extends _UserScorePrimitive {
  const _$_UserScorePrimitive(
      {required this.gameId,
      required this.gamifierUserId,
      required this.userName,
      required this.level,
      required this.gameTodos})
      : super._();

  @override
  final String gameId;
  @override
  final String gamifierUserId;
  @override
  final String userName;
  @override
  final int level;
  @override
  final List<GameTodoPrimitive> gameTodos;

  @override
  String toString() {
    return 'UserScorePrimitive(gameId: $gameId, gamifierUserId: $gamifierUserId, userName: $userName, level: $level, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserScorePrimitive &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality()
                .equals(other.gamifierUserId, gamifierUserId) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.gameTodos, gameTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(gamifierUserId),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(gameTodos));

  @JsonKey(ignore: true)
  @override
  _$UserScorePrimitiveCopyWith<_UserScorePrimitive> get copyWith =>
      __$UserScorePrimitiveCopyWithImpl<_UserScorePrimitive>(this, _$identity);
}

abstract class _UserScorePrimitive extends UserScorePrimitive {
  const factory _UserScorePrimitive(
      {required String gameId,
      required String gamifierUserId,
      required String userName,
      required int level,
      required List<GameTodoPrimitive> gameTodos}) = _$_UserScorePrimitive;
  const _UserScorePrimitive._() : super._();

  @override
  String get gameId;
  @override
  String get gamifierUserId;
  @override
  String get userName;
  @override
  int get level;
  @override
  List<GameTodoPrimitive> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$UserScorePrimitiveCopyWith<_UserScorePrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserGamesListPrimitiveTearOff {
  const _$UserGamesListPrimitiveTearOff();

  _UserGamesListPrimitive call(
      {required String userId, required List<GameKeyPrimitive> gamekeys}) {
    return _UserGamesListPrimitive(
      userId: userId,
      gamekeys: gamekeys,
    );
  }
}

/// @nodoc
const $UserGamesListPrimitive = _$UserGamesListPrimitiveTearOff();

/// @nodoc
mixin _$UserGamesListPrimitive {
  String get userId => throw _privateConstructorUsedError;
  List<GameKeyPrimitive> get gamekeys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserGamesListPrimitiveCopyWith<UserGamesListPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGamesListPrimitiveCopyWith<$Res> {
  factory $UserGamesListPrimitiveCopyWith(UserGamesListPrimitive value,
          $Res Function(UserGamesListPrimitive) then) =
      _$UserGamesListPrimitiveCopyWithImpl<$Res>;
  $Res call({String userId, List<GameKeyPrimitive> gamekeys});
}

/// @nodoc
class _$UserGamesListPrimitiveCopyWithImpl<$Res>
    implements $UserGamesListPrimitiveCopyWith<$Res> {
  _$UserGamesListPrimitiveCopyWithImpl(this._value, this._then);

  final UserGamesListPrimitive _value;
  // ignore: unused_field
  final $Res Function(UserGamesListPrimitive) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? gamekeys = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      gamekeys: gamekeys == freezed
          ? _value.gamekeys
          : gamekeys // ignore: cast_nullable_to_non_nullable
              as List<GameKeyPrimitive>,
    ));
  }
}

/// @nodoc
abstract class _$UserGamesListPrimitiveCopyWith<$Res>
    implements $UserGamesListPrimitiveCopyWith<$Res> {
  factory _$UserGamesListPrimitiveCopyWith(_UserGamesListPrimitive value,
          $Res Function(_UserGamesListPrimitive) then) =
      __$UserGamesListPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String userId, List<GameKeyPrimitive> gamekeys});
}

/// @nodoc
class __$UserGamesListPrimitiveCopyWithImpl<$Res>
    extends _$UserGamesListPrimitiveCopyWithImpl<$Res>
    implements _$UserGamesListPrimitiveCopyWith<$Res> {
  __$UserGamesListPrimitiveCopyWithImpl(_UserGamesListPrimitive _value,
      $Res Function(_UserGamesListPrimitive) _then)
      : super(_value, (v) => _then(v as _UserGamesListPrimitive));

  @override
  _UserGamesListPrimitive get _value => super._value as _UserGamesListPrimitive;

  @override
  $Res call({
    Object? userId = freezed,
    Object? gamekeys = freezed,
  }) {
    return _then(_UserGamesListPrimitive(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      gamekeys: gamekeys == freezed
          ? _value.gamekeys
          : gamekeys // ignore: cast_nullable_to_non_nullable
              as List<GameKeyPrimitive>,
    ));
  }
}

/// @nodoc

class _$_UserGamesListPrimitive extends _UserGamesListPrimitive {
  const _$_UserGamesListPrimitive(
      {required this.userId, required this.gamekeys})
      : super._();

  @override
  final String userId;
  @override
  final List<GameKeyPrimitive> gamekeys;

  @override
  String toString() {
    return 'UserGamesListPrimitive(userId: $userId, gamekeys: $gamekeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGamesListPrimitive &&
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
  _$UserGamesListPrimitiveCopyWith<_UserGamesListPrimitive> get copyWith =>
      __$UserGamesListPrimitiveCopyWithImpl<_UserGamesListPrimitive>(
          this, _$identity);
}

abstract class _UserGamesListPrimitive extends UserGamesListPrimitive {
  const factory _UserGamesListPrimitive(
      {required String userId,
      required List<GameKeyPrimitive> gamekeys}) = _$_UserGamesListPrimitive;
  const _UserGamesListPrimitive._() : super._();

  @override
  String get userId;
  @override
  List<GameKeyPrimitive> get gamekeys;
  @override
  @JsonKey(ignore: true)
  _$UserGamesListPrimitiveCopyWith<_UserGamesListPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameKeyPrimitiveTearOff {
  const _$GameKeyPrimitiveTearOff();

  _GameKeyPrimitive call({required String gameId, required String gameName}) {
    return _GameKeyPrimitive(
      gameId: gameId,
      gameName: gameName,
    );
  }
}

/// @nodoc
const $GameKeyPrimitive = _$GameKeyPrimitiveTearOff();

/// @nodoc
mixin _$GameKeyPrimitive {
  String get gameId => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameKeyPrimitiveCopyWith<GameKeyPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameKeyPrimitiveCopyWith<$Res> {
  factory $GameKeyPrimitiveCopyWith(
          GameKeyPrimitive value, $Res Function(GameKeyPrimitive) then) =
      _$GameKeyPrimitiveCopyWithImpl<$Res>;
  $Res call({String gameId, String gameName});
}

/// @nodoc
class _$GameKeyPrimitiveCopyWithImpl<$Res>
    implements $GameKeyPrimitiveCopyWith<$Res> {
  _$GameKeyPrimitiveCopyWithImpl(this._value, this._then);

  final GameKeyPrimitive _value;
  // ignore: unused_field
  final $Res Function(GameKeyPrimitive) _then;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gameName = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GameKeyPrimitiveCopyWith<$Res>
    implements $GameKeyPrimitiveCopyWith<$Res> {
  factory _$GameKeyPrimitiveCopyWith(
          _GameKeyPrimitive value, $Res Function(_GameKeyPrimitive) then) =
      __$GameKeyPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String gameId, String gameName});
}

/// @nodoc
class __$GameKeyPrimitiveCopyWithImpl<$Res>
    extends _$GameKeyPrimitiveCopyWithImpl<$Res>
    implements _$GameKeyPrimitiveCopyWith<$Res> {
  __$GameKeyPrimitiveCopyWithImpl(
      _GameKeyPrimitive _value, $Res Function(_GameKeyPrimitive) _then)
      : super(_value, (v) => _then(v as _GameKeyPrimitive));

  @override
  _GameKeyPrimitive get _value => super._value as _GameKeyPrimitive;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gameName = freezed,
  }) {
    return _then(_GameKeyPrimitive(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GameKeyPrimitive extends _GameKeyPrimitive {
  const _$_GameKeyPrimitive({required this.gameId, required this.gameName})
      : super._();

  @override
  final String gameId;
  @override
  final String gameName;

  @override
  String toString() {
    return 'GameKeyPrimitive(gameId: $gameId, gameName: $gameName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameKeyPrimitive &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality().equals(other.gameName, gameName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(gameName));

  @JsonKey(ignore: true)
  @override
  _$GameKeyPrimitiveCopyWith<_GameKeyPrimitive> get copyWith =>
      __$GameKeyPrimitiveCopyWithImpl<_GameKeyPrimitive>(this, _$identity);
}

abstract class _GameKeyPrimitive extends GameKeyPrimitive {
  const factory _GameKeyPrimitive(
      {required String gameId, required String gameName}) = _$_GameKeyPrimitive;
  const _GameKeyPrimitive._() : super._();

  @override
  String get gameId;
  @override
  String get gameName;
  @override
  @JsonKey(ignore: true)
  _$GameKeyPrimitiveCopyWith<_GameKeyPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameDetailsPrimitiveTearOff {
  const _$GameDetailsPrimitiveTearOff();

  _GameDetailsPrimitive call(
      {required GamePrimitive game,
      required List<UserScorePrimitive> usersScores}) {
    return _GameDetailsPrimitive(
      game: game,
      usersScores: usersScores,
    );
  }
}

/// @nodoc
const $GameDetailsPrimitive = _$GameDetailsPrimitiveTearOff();

/// @nodoc
mixin _$GameDetailsPrimitive {
  GamePrimitive get game => throw _privateConstructorUsedError;
  List<UserScorePrimitive> get usersScores =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDetailsPrimitiveCopyWith<GameDetailsPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsPrimitiveCopyWith<$Res> {
  factory $GameDetailsPrimitiveCopyWith(GameDetailsPrimitive value,
          $Res Function(GameDetailsPrimitive) then) =
      _$GameDetailsPrimitiveCopyWithImpl<$Res>;
  $Res call({GamePrimitive game, List<UserScorePrimitive> usersScores});

  $GamePrimitiveCopyWith<$Res> get game;
}

/// @nodoc
class _$GameDetailsPrimitiveCopyWithImpl<$Res>
    implements $GameDetailsPrimitiveCopyWith<$Res> {
  _$GameDetailsPrimitiveCopyWithImpl(this._value, this._then);

  final GameDetailsPrimitive _value;
  // ignore: unused_field
  final $Res Function(GameDetailsPrimitive) _then;

  @override
  $Res call({
    Object? game = freezed,
    Object? usersScores = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
      usersScores: usersScores == freezed
          ? _value.usersScores
          : usersScores // ignore: cast_nullable_to_non_nullable
              as List<UserScorePrimitive>,
    ));
  }

  @override
  $GamePrimitiveCopyWith<$Res> get game {
    return $GamePrimitiveCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc
abstract class _$GameDetailsPrimitiveCopyWith<$Res>
    implements $GameDetailsPrimitiveCopyWith<$Res> {
  factory _$GameDetailsPrimitiveCopyWith(_GameDetailsPrimitive value,
          $Res Function(_GameDetailsPrimitive) then) =
      __$GameDetailsPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({GamePrimitive game, List<UserScorePrimitive> usersScores});

  @override
  $GamePrimitiveCopyWith<$Res> get game;
}

/// @nodoc
class __$GameDetailsPrimitiveCopyWithImpl<$Res>
    extends _$GameDetailsPrimitiveCopyWithImpl<$Res>
    implements _$GameDetailsPrimitiveCopyWith<$Res> {
  __$GameDetailsPrimitiveCopyWithImpl(
      _GameDetailsPrimitive _value, $Res Function(_GameDetailsPrimitive) _then)
      : super(_value, (v) => _then(v as _GameDetailsPrimitive));

  @override
  _GameDetailsPrimitive get _value => super._value as _GameDetailsPrimitive;

  @override
  $Res call({
    Object? game = freezed,
    Object? usersScores = freezed,
  }) {
    return _then(_GameDetailsPrimitive(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
      usersScores: usersScores == freezed
          ? _value.usersScores
          : usersScores // ignore: cast_nullable_to_non_nullable
              as List<UserScorePrimitive>,
    ));
  }
}

/// @nodoc

class _$_GameDetailsPrimitive extends _GameDetailsPrimitive {
  const _$_GameDetailsPrimitive({required this.game, required this.usersScores})
      : super._();

  @override
  final GamePrimitive game;
  @override
  final List<UserScorePrimitive> usersScores;

  @override
  String toString() {
    return 'GameDetailsPrimitive(game: $game, usersScores: $usersScores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDetailsPrimitive &&
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
  _$GameDetailsPrimitiveCopyWith<_GameDetailsPrimitive> get copyWith =>
      __$GameDetailsPrimitiveCopyWithImpl<_GameDetailsPrimitive>(
          this, _$identity);
}

abstract class _GameDetailsPrimitive extends GameDetailsPrimitive {
  const factory _GameDetailsPrimitive(
      {required GamePrimitive game,
      required List<UserScorePrimitive> usersScores}) = _$_GameDetailsPrimitive;
  const _GameDetailsPrimitive._() : super._();

  @override
  GamePrimitive get game;
  @override
  List<UserScorePrimitive> get usersScores;
  @override
  @JsonKey(ignore: true)
  _$GameDetailsPrimitiveCopyWith<_GameDetailsPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
