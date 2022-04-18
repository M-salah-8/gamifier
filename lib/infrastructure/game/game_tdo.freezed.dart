// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_tdo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDTO _$GameDTOFromJson(Map<String, dynamic> json) {
  return _GameDTO.fromJson(json);
}

/// @nodoc
class _$GameDTOTearOff {
  const _$GameDTOTearOff();

  _GameDTO call(
      {required String id,
      required String admin,
      required List<String> usersId,
      required String name,
      required int noOfUsers,
      required List<GameTodoTDO> gameTodos}) {
    return _GameDTO(
      id: id,
      admin: admin,
      usersId: usersId,
      name: name,
      noOfUsers: noOfUsers,
      gameTodos: gameTodos,
    );
  }

  GameDTO fromJson(Map<String, Object?> json) {
    return GameDTO.fromJson(json);
  }
}

/// @nodoc
const $GameDTO = _$GameDTOTearOff();

/// @nodoc
mixin _$GameDTO {
  String get id => throw _privateConstructorUsedError;
  String get admin => throw _privateConstructorUsedError;
  List<String> get usersId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get noOfUsers => throw _privateConstructorUsedError;
  List<GameTodoTDO> get gameTodos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDTOCopyWith<GameDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDTOCopyWith<$Res> {
  factory $GameDTOCopyWith(GameDTO value, $Res Function(GameDTO) then) =
      _$GameDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String admin,
      List<String> usersId,
      String name,
      int noOfUsers,
      List<GameTodoTDO> gameTodos});
}

/// @nodoc
class _$GameDTOCopyWithImpl<$Res> implements $GameDTOCopyWith<$Res> {
  _$GameDTOCopyWithImpl(this._value, this._then);

  final GameDTO _value;
  // ignore: unused_field
  final $Res Function(GameDTO) _then;

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
              as List<GameTodoTDO>,
    ));
  }
}

/// @nodoc
abstract class _$GameDTOCopyWith<$Res> implements $GameDTOCopyWith<$Res> {
  factory _$GameDTOCopyWith(_GameDTO value, $Res Function(_GameDTO) then) =
      __$GameDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String admin,
      List<String> usersId,
      String name,
      int noOfUsers,
      List<GameTodoTDO> gameTodos});
}

/// @nodoc
class __$GameDTOCopyWithImpl<$Res> extends _$GameDTOCopyWithImpl<$Res>
    implements _$GameDTOCopyWith<$Res> {
  __$GameDTOCopyWithImpl(_GameDTO _value, $Res Function(_GameDTO) _then)
      : super(_value, (v) => _then(v as _GameDTO));

  @override
  _GameDTO get _value => super._value as _GameDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
    Object? usersId = freezed,
    Object? name = freezed,
    Object? noOfUsers = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_GameDTO(
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
              as List<GameTodoTDO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDTO extends _GameDTO {
  const _$_GameDTO(
      {required this.id,
      required this.admin,
      required this.usersId,
      required this.name,
      required this.noOfUsers,
      required this.gameTodos})
      : super._();

  factory _$_GameDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GameDTOFromJson(json);

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
  final List<GameTodoTDO> gameTodos;

  @override
  String toString() {
    return 'GameDTO(id: $id, admin: $admin, usersId: $usersId, name: $name, noOfUsers: $noOfUsers, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDTO &&
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
  _$GameDTOCopyWith<_GameDTO> get copyWith =>
      __$GameDTOCopyWithImpl<_GameDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameDTOToJson(this);
  }
}

abstract class _GameDTO extends GameDTO {
  const factory _GameDTO(
      {required String id,
      required String admin,
      required List<String> usersId,
      required String name,
      required int noOfUsers,
      required List<GameTodoTDO> gameTodos}) = _$_GameDTO;
  const _GameDTO._() : super._();

  factory _GameDTO.fromJson(Map<String, dynamic> json) = _$_GameDTO.fromJson;

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
  List<GameTodoTDO> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$GameDTOCopyWith<_GameDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

GameTodoTDO _$GameTodoTDOFromJson(Map<String, dynamic> json) {
  return _GameTodoTDO.fromJson(json);
}

/// @nodoc
class _$GameTodoTDOTearOff {
  const _$GameTodoTDOTearOff();

  _GameTodoTDO call(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) {
    return _GameTodoTDO(
      id: id,
      todoName: todoName,
      times: times,
      points: points,
      done: done,
    );
  }

  GameTodoTDO fromJson(Map<String, Object?> json) {
    return GameTodoTDO.fromJson(json);
  }
}

/// @nodoc
const $GameTodoTDO = _$GameTodoTDOTearOff();

/// @nodoc
mixin _$GameTodoTDO {
  String get id => throw _privateConstructorUsedError;
  String get todoName => throw _privateConstructorUsedError;
  int get times => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameTodoTDOCopyWith<GameTodoTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTodoTDOCopyWith<$Res> {
  factory $GameTodoTDOCopyWith(
          GameTodoTDO value, $Res Function(GameTodoTDO) then) =
      _$GameTodoTDOCopyWithImpl<$Res>;
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class _$GameTodoTDOCopyWithImpl<$Res> implements $GameTodoTDOCopyWith<$Res> {
  _$GameTodoTDOCopyWithImpl(this._value, this._then);

  final GameTodoTDO _value;
  // ignore: unused_field
  final $Res Function(GameTodoTDO) _then;

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
abstract class _$GameTodoTDOCopyWith<$Res>
    implements $GameTodoTDOCopyWith<$Res> {
  factory _$GameTodoTDOCopyWith(
          _GameTodoTDO value, $Res Function(_GameTodoTDO) then) =
      __$GameTodoTDOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class __$GameTodoTDOCopyWithImpl<$Res> extends _$GameTodoTDOCopyWithImpl<$Res>
    implements _$GameTodoTDOCopyWith<$Res> {
  __$GameTodoTDOCopyWithImpl(
      _GameTodoTDO _value, $Res Function(_GameTodoTDO) _then)
      : super(_value, (v) => _then(v as _GameTodoTDO));

  @override
  _GameTodoTDO get _value => super._value as _GameTodoTDO;

  @override
  $Res call({
    Object? id = freezed,
    Object? todoName = freezed,
    Object? times = freezed,
    Object? points = freezed,
    Object? done = freezed,
  }) {
    return _then(_GameTodoTDO(
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
@JsonSerializable()
class _$_GameTodoTDO extends _GameTodoTDO {
  const _$_GameTodoTDO(
      {required this.id,
      required this.todoName,
      required this.times,
      required this.points,
      required this.done})
      : super._();

  factory _$_GameTodoTDO.fromJson(Map<String, dynamic> json) =>
      _$$_GameTodoTDOFromJson(json);

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
    return 'GameTodoTDO(id: $id, todoName: $todoName, times: $times, points: $points, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameTodoTDO &&
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
  _$GameTodoTDOCopyWith<_GameTodoTDO> get copyWith =>
      __$GameTodoTDOCopyWithImpl<_GameTodoTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameTodoTDOToJson(this);
  }
}

abstract class _GameTodoTDO extends GameTodoTDO {
  const factory _GameTodoTDO(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) = _$_GameTodoTDO;
  const _GameTodoTDO._() : super._();

  factory _GameTodoTDO.fromJson(Map<String, dynamic> json) =
      _$_GameTodoTDO.fromJson;

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
  _$GameTodoTDOCopyWith<_GameTodoTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserScoreTDO _$UserScoreTDOFromJson(Map<String, dynamic> json) {
  return _UserScoreTDO.fromJson(json);
}

/// @nodoc
class _$UserScoreTDOTearOff {
  const _$UserScoreTDOTearOff();

  _UserScoreTDO call(
      {required String gameId,
      required String gamifierUserId,
      required String userName,
      required int level,
      required List<GameTodoTDO> gameTodos}) {
    return _UserScoreTDO(
      gameId: gameId,
      gamifierUserId: gamifierUserId,
      userName: userName,
      level: level,
      gameTodos: gameTodos,
    );
  }

  UserScoreTDO fromJson(Map<String, Object?> json) {
    return UserScoreTDO.fromJson(json);
  }
}

/// @nodoc
const $UserScoreTDO = _$UserScoreTDOTearOff();

/// @nodoc
mixin _$UserScoreTDO {
  String get gameId => throw _privateConstructorUsedError;
  String get gamifierUserId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  List<GameTodoTDO> get gameTodos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserScoreTDOCopyWith<UserScoreTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScoreTDOCopyWith<$Res> {
  factory $UserScoreTDOCopyWith(
          UserScoreTDO value, $Res Function(UserScoreTDO) then) =
      _$UserScoreTDOCopyWithImpl<$Res>;
  $Res call(
      {String gameId,
      String gamifierUserId,
      String userName,
      int level,
      List<GameTodoTDO> gameTodos});
}

/// @nodoc
class _$UserScoreTDOCopyWithImpl<$Res> implements $UserScoreTDOCopyWith<$Res> {
  _$UserScoreTDOCopyWithImpl(this._value, this._then);

  final UserScoreTDO _value;
  // ignore: unused_field
  final $Res Function(UserScoreTDO) _then;

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
              as List<GameTodoTDO>,
    ));
  }
}

/// @nodoc
abstract class _$UserScoreTDOCopyWith<$Res>
    implements $UserScoreTDOCopyWith<$Res> {
  factory _$UserScoreTDOCopyWith(
          _UserScoreTDO value, $Res Function(_UserScoreTDO) then) =
      __$UserScoreTDOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gameId,
      String gamifierUserId,
      String userName,
      int level,
      List<GameTodoTDO> gameTodos});
}

/// @nodoc
class __$UserScoreTDOCopyWithImpl<$Res> extends _$UserScoreTDOCopyWithImpl<$Res>
    implements _$UserScoreTDOCopyWith<$Res> {
  __$UserScoreTDOCopyWithImpl(
      _UserScoreTDO _value, $Res Function(_UserScoreTDO) _then)
      : super(_value, (v) => _then(v as _UserScoreTDO));

  @override
  _UserScoreTDO get _value => super._value as _UserScoreTDO;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gamifierUserId = freezed,
    Object? userName = freezed,
    Object? level = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_UserScoreTDO(
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
              as List<GameTodoTDO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserScoreTDO extends _UserScoreTDO {
  const _$_UserScoreTDO(
      {required this.gameId,
      required this.gamifierUserId,
      required this.userName,
      required this.level,
      required this.gameTodos})
      : super._();

  factory _$_UserScoreTDO.fromJson(Map<String, dynamic> json) =>
      _$$_UserScoreTDOFromJson(json);

  @override
  final String gameId;
  @override
  final String gamifierUserId;
  @override
  final String userName;
  @override
  final int level;
  @override
  final List<GameTodoTDO> gameTodos;

  @override
  String toString() {
    return 'UserScoreTDO(gameId: $gameId, gamifierUserId: $gamifierUserId, userName: $userName, level: $level, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserScoreTDO &&
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
  _$UserScoreTDOCopyWith<_UserScoreTDO> get copyWith =>
      __$UserScoreTDOCopyWithImpl<_UserScoreTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserScoreTDOToJson(this);
  }
}

abstract class _UserScoreTDO extends UserScoreTDO {
  const factory _UserScoreTDO(
      {required String gameId,
      required String gamifierUserId,
      required String userName,
      required int level,
      required List<GameTodoTDO> gameTodos}) = _$_UserScoreTDO;
  const _UserScoreTDO._() : super._();

  factory _UserScoreTDO.fromJson(Map<String, dynamic> json) =
      _$_UserScoreTDO.fromJson;

  @override
  String get gameId;
  @override
  String get gamifierUserId;
  @override
  String get userName;
  @override
  int get level;
  @override
  List<GameTodoTDO> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$UserScoreTDOCopyWith<_UserScoreTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

GameDetailsTDO _$GameDetailsTDOFromJson(Map<String, dynamic> json) {
  return _GameDetailsTDO.fromJson(json);
}

/// @nodoc
class _$GameDetailsTDOTearOff {
  const _$GameDetailsTDOTearOff();

  _GameDetailsTDO call(
      {required GameDTO game, required List<UserScoreTDO> usersScores}) {
    return _GameDetailsTDO(
      game: game,
      usersScores: usersScores,
    );
  }

  GameDetailsTDO fromJson(Map<String, Object?> json) {
    return GameDetailsTDO.fromJson(json);
  }
}

/// @nodoc
const $GameDetailsTDO = _$GameDetailsTDOTearOff();

/// @nodoc
mixin _$GameDetailsTDO {
  GameDTO get game => throw _privateConstructorUsedError;
  List<UserScoreTDO> get usersScores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDetailsTDOCopyWith<GameDetailsTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsTDOCopyWith<$Res> {
  factory $GameDetailsTDOCopyWith(
          GameDetailsTDO value, $Res Function(GameDetailsTDO) then) =
      _$GameDetailsTDOCopyWithImpl<$Res>;
  $Res call({GameDTO game, List<UserScoreTDO> usersScores});

  $GameDTOCopyWith<$Res> get game;
}

/// @nodoc
class _$GameDetailsTDOCopyWithImpl<$Res>
    implements $GameDetailsTDOCopyWith<$Res> {
  _$GameDetailsTDOCopyWithImpl(this._value, this._then);

  final GameDetailsTDO _value;
  // ignore: unused_field
  final $Res Function(GameDetailsTDO) _then;

  @override
  $Res call({
    Object? game = freezed,
    Object? usersScores = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameDTO,
      usersScores: usersScores == freezed
          ? _value.usersScores
          : usersScores // ignore: cast_nullable_to_non_nullable
              as List<UserScoreTDO>,
    ));
  }

  @override
  $GameDTOCopyWith<$Res> get game {
    return $GameDTOCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc
abstract class _$GameDetailsTDOCopyWith<$Res>
    implements $GameDetailsTDOCopyWith<$Res> {
  factory _$GameDetailsTDOCopyWith(
          _GameDetailsTDO value, $Res Function(_GameDetailsTDO) then) =
      __$GameDetailsTDOCopyWithImpl<$Res>;
  @override
  $Res call({GameDTO game, List<UserScoreTDO> usersScores});

  @override
  $GameDTOCopyWith<$Res> get game;
}

/// @nodoc
class __$GameDetailsTDOCopyWithImpl<$Res>
    extends _$GameDetailsTDOCopyWithImpl<$Res>
    implements _$GameDetailsTDOCopyWith<$Res> {
  __$GameDetailsTDOCopyWithImpl(
      _GameDetailsTDO _value, $Res Function(_GameDetailsTDO) _then)
      : super(_value, (v) => _then(v as _GameDetailsTDO));

  @override
  _GameDetailsTDO get _value => super._value as _GameDetailsTDO;

  @override
  $Res call({
    Object? game = freezed,
    Object? usersScores = freezed,
  }) {
    return _then(_GameDetailsTDO(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameDTO,
      usersScores: usersScores == freezed
          ? _value.usersScores
          : usersScores // ignore: cast_nullable_to_non_nullable
              as List<UserScoreTDO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDetailsTDO extends _GameDetailsTDO {
  const _$_GameDetailsTDO({required this.game, required this.usersScores})
      : super._();

  factory _$_GameDetailsTDO.fromJson(Map<String, dynamic> json) =>
      _$$_GameDetailsTDOFromJson(json);

  @override
  final GameDTO game;
  @override
  final List<UserScoreTDO> usersScores;

  @override
  String toString() {
    return 'GameDetailsTDO(game: $game, usersScores: $usersScores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDetailsTDO &&
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
  _$GameDetailsTDOCopyWith<_GameDetailsTDO> get copyWith =>
      __$GameDetailsTDOCopyWithImpl<_GameDetailsTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameDetailsTDOToJson(this);
  }
}

abstract class _GameDetailsTDO extends GameDetailsTDO {
  const factory _GameDetailsTDO(
      {required GameDTO game,
      required List<UserScoreTDO> usersScores}) = _$_GameDetailsTDO;
  const _GameDetailsTDO._() : super._();

  factory _GameDetailsTDO.fromJson(Map<String, dynamic> json) =
      _$_GameDetailsTDO.fromJson;

  @override
  GameDTO get game;
  @override
  List<UserScoreTDO> get usersScores;
  @override
  @JsonKey(ignore: true)
  _$GameDetailsTDOCopyWith<_GameDetailsTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserGamesListTDO _$UserGamesListTDOFromJson(Map<String, dynamic> json) {
  return _UserGamesListTDO.fromJson(json);
}

/// @nodoc
class _$UserGamesListTDOTearOff {
  const _$UserGamesListTDOTearOff();

  _UserGamesListTDO call(
      {required String userId, required List<GameKeyTDO> gamekeys}) {
    return _UserGamesListTDO(
      userId: userId,
      gamekeys: gamekeys,
    );
  }

  UserGamesListTDO fromJson(Map<String, Object?> json) {
    return UserGamesListTDO.fromJson(json);
  }
}

/// @nodoc
const $UserGamesListTDO = _$UserGamesListTDOTearOff();

/// @nodoc
mixin _$UserGamesListTDO {
  String get userId => throw _privateConstructorUsedError;
  List<GameKeyTDO> get gamekeys => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGamesListTDOCopyWith<UserGamesListTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGamesListTDOCopyWith<$Res> {
  factory $UserGamesListTDOCopyWith(
          UserGamesListTDO value, $Res Function(UserGamesListTDO) then) =
      _$UserGamesListTDOCopyWithImpl<$Res>;
  $Res call({String userId, List<GameKeyTDO> gamekeys});
}

/// @nodoc
class _$UserGamesListTDOCopyWithImpl<$Res>
    implements $UserGamesListTDOCopyWith<$Res> {
  _$UserGamesListTDOCopyWithImpl(this._value, this._then);

  final UserGamesListTDO _value;
  // ignore: unused_field
  final $Res Function(UserGamesListTDO) _then;

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
              as List<GameKeyTDO>,
    ));
  }
}

/// @nodoc
abstract class _$UserGamesListTDOCopyWith<$Res>
    implements $UserGamesListTDOCopyWith<$Res> {
  factory _$UserGamesListTDOCopyWith(
          _UserGamesListTDO value, $Res Function(_UserGamesListTDO) then) =
      __$UserGamesListTDOCopyWithImpl<$Res>;
  @override
  $Res call({String userId, List<GameKeyTDO> gamekeys});
}

/// @nodoc
class __$UserGamesListTDOCopyWithImpl<$Res>
    extends _$UserGamesListTDOCopyWithImpl<$Res>
    implements _$UserGamesListTDOCopyWith<$Res> {
  __$UserGamesListTDOCopyWithImpl(
      _UserGamesListTDO _value, $Res Function(_UserGamesListTDO) _then)
      : super(_value, (v) => _then(v as _UserGamesListTDO));

  @override
  _UserGamesListTDO get _value => super._value as _UserGamesListTDO;

  @override
  $Res call({
    Object? userId = freezed,
    Object? gamekeys = freezed,
  }) {
    return _then(_UserGamesListTDO(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      gamekeys: gamekeys == freezed
          ? _value.gamekeys
          : gamekeys // ignore: cast_nullable_to_non_nullable
              as List<GameKeyTDO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGamesListTDO extends _UserGamesListTDO {
  const _$_UserGamesListTDO({required this.userId, required this.gamekeys})
      : super._();

  factory _$_UserGamesListTDO.fromJson(Map<String, dynamic> json) =>
      _$$_UserGamesListTDOFromJson(json);

  @override
  final String userId;
  @override
  final List<GameKeyTDO> gamekeys;

  @override
  String toString() {
    return 'UserGamesListTDO(userId: $userId, gamekeys: $gamekeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGamesListTDO &&
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
  _$UserGamesListTDOCopyWith<_UserGamesListTDO> get copyWith =>
      __$UserGamesListTDOCopyWithImpl<_UserGamesListTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGamesListTDOToJson(this);
  }
}

abstract class _UserGamesListTDO extends UserGamesListTDO {
  const factory _UserGamesListTDO(
      {required String userId,
      required List<GameKeyTDO> gamekeys}) = _$_UserGamesListTDO;
  const _UserGamesListTDO._() : super._();

  factory _UserGamesListTDO.fromJson(Map<String, dynamic> json) =
      _$_UserGamesListTDO.fromJson;

  @override
  String get userId;
  @override
  List<GameKeyTDO> get gamekeys;
  @override
  @JsonKey(ignore: true)
  _$UserGamesListTDOCopyWith<_UserGamesListTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

GameKeyTDO _$GameKeyTDOFromJson(Map<String, dynamic> json) {
  return _GameKeyTDO.fromJson(json);
}

/// @nodoc
class _$GameKeyTDOTearOff {
  const _$GameKeyTDOTearOff();

  _GameKeyTDO call({required String gameId, required String gameName}) {
    return _GameKeyTDO(
      gameId: gameId,
      gameName: gameName,
    );
  }

  GameKeyTDO fromJson(Map<String, Object?> json) {
    return GameKeyTDO.fromJson(json);
  }
}

/// @nodoc
const $GameKeyTDO = _$GameKeyTDOTearOff();

/// @nodoc
mixin _$GameKeyTDO {
  String get gameId => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameKeyTDOCopyWith<GameKeyTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameKeyTDOCopyWith<$Res> {
  factory $GameKeyTDOCopyWith(
          GameKeyTDO value, $Res Function(GameKeyTDO) then) =
      _$GameKeyTDOCopyWithImpl<$Res>;
  $Res call({String gameId, String gameName});
}

/// @nodoc
class _$GameKeyTDOCopyWithImpl<$Res> implements $GameKeyTDOCopyWith<$Res> {
  _$GameKeyTDOCopyWithImpl(this._value, this._then);

  final GameKeyTDO _value;
  // ignore: unused_field
  final $Res Function(GameKeyTDO) _then;

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
abstract class _$GameKeyTDOCopyWith<$Res> implements $GameKeyTDOCopyWith<$Res> {
  factory _$GameKeyTDOCopyWith(
          _GameKeyTDO value, $Res Function(_GameKeyTDO) then) =
      __$GameKeyTDOCopyWithImpl<$Res>;
  @override
  $Res call({String gameId, String gameName});
}

/// @nodoc
class __$GameKeyTDOCopyWithImpl<$Res> extends _$GameKeyTDOCopyWithImpl<$Res>
    implements _$GameKeyTDOCopyWith<$Res> {
  __$GameKeyTDOCopyWithImpl(
      _GameKeyTDO _value, $Res Function(_GameKeyTDO) _then)
      : super(_value, (v) => _then(v as _GameKeyTDO));

  @override
  _GameKeyTDO get _value => super._value as _GameKeyTDO;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? gameName = freezed,
  }) {
    return _then(_GameKeyTDO(
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
@JsonSerializable()
class _$_GameKeyTDO extends _GameKeyTDO {
  const _$_GameKeyTDO({required this.gameId, required this.gameName})
      : super._();

  factory _$_GameKeyTDO.fromJson(Map<String, dynamic> json) =>
      _$$_GameKeyTDOFromJson(json);

  @override
  final String gameId;
  @override
  final String gameName;

  @override
  String toString() {
    return 'GameKeyTDO(gameId: $gameId, gameName: $gameName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameKeyTDO &&
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
  _$GameKeyTDOCopyWith<_GameKeyTDO> get copyWith =>
      __$GameKeyTDOCopyWithImpl<_GameKeyTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameKeyTDOToJson(this);
  }
}

abstract class _GameKeyTDO extends GameKeyTDO {
  const factory _GameKeyTDO(
      {required String gameId, required String gameName}) = _$_GameKeyTDO;
  const _GameKeyTDO._() : super._();

  factory _GameKeyTDO.fromJson(Map<String, dynamic> json) =
      _$_GameKeyTDO.fromJson;

  @override
  String get gameId;
  @override
  String get gameName;
  @override
  @JsonKey(ignore: true)
  _$GameKeyTDOCopyWith<_GameKeyTDO> get copyWith =>
      throw _privateConstructorUsedError;
}
