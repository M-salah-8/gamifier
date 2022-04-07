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
      required int level,
      required String name,
      required List<GameTodoDTO> gameTodos}) {
    return _GameDTO(
      id: id,
      level: level,
      name: name,
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
  int get level => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<GameTodoDTO> get gameTodos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDTOCopyWith<GameDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDTOCopyWith<$Res> {
  factory $GameDTOCopyWith(GameDTO value, $Res Function(GameDTO) then) =
      _$GameDTOCopyWithImpl<$Res>;
  $Res call({String id, int level, String name, List<GameTodoDTO> gameTodos});
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
    Object? level = freezed,
    Object? name = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as List<GameTodoDTO>,
    ));
  }
}

/// @nodoc
abstract class _$GameDTOCopyWith<$Res> implements $GameDTOCopyWith<$Res> {
  factory _$GameDTOCopyWith(_GameDTO value, $Res Function(_GameDTO) then) =
      __$GameDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, int level, String name, List<GameTodoDTO> gameTodos});
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
    Object? level = freezed,
    Object? name = freezed,
    Object? gameTodos = freezed,
  }) {
    return _then(_GameDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameTodos: gameTodos == freezed
          ? _value.gameTodos
          : gameTodos // ignore: cast_nullable_to_non_nullable
              as List<GameTodoDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDTO extends _GameDTO {
  const _$_GameDTO(
      {required this.id,
      required this.level,
      required this.name,
      required this.gameTodos})
      : super._();

  factory _$_GameDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GameDTOFromJson(json);

  @override
  final String id;
  @override
  final int level;
  @override
  final String name;
  @override
  final List<GameTodoDTO> gameTodos;

  @override
  String toString() {
    return 'GameDTO(id: $id, level: $level, name: $name, gameTodos: $gameTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.gameTodos, gameTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(name),
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
      required int level,
      required String name,
      required List<GameTodoDTO> gameTodos}) = _$_GameDTO;
  const _GameDTO._() : super._();

  factory _GameDTO.fromJson(Map<String, dynamic> json) = _$_GameDTO.fromJson;

  @override
  String get id;
  @override
  int get level;
  @override
  String get name;
  @override
  List<GameTodoDTO> get gameTodos;
  @override
  @JsonKey(ignore: true)
  _$GameDTOCopyWith<_GameDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

GameTodoDTO _$GameTodoDTOFromJson(Map<String, dynamic> json) {
  return _GameTodoDTO.fromJson(json);
}

/// @nodoc
class _$GameTodoDTOTearOff {
  const _$GameTodoDTOTearOff();

  _GameTodoDTO call(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) {
    return _GameTodoDTO(
      id: id,
      todoName: todoName,
      times: times,
      points: points,
      done: done,
    );
  }

  GameTodoDTO fromJson(Map<String, Object?> json) {
    return GameTodoDTO.fromJson(json);
  }
}

/// @nodoc
const $GameTodoDTO = _$GameTodoDTOTearOff();

/// @nodoc
mixin _$GameTodoDTO {
  String get id => throw _privateConstructorUsedError;
  String get todoName => throw _privateConstructorUsedError;
  int get times => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameTodoDTOCopyWith<GameTodoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTodoDTOCopyWith<$Res> {
  factory $GameTodoDTOCopyWith(
          GameTodoDTO value, $Res Function(GameTodoDTO) then) =
      _$GameTodoDTOCopyWithImpl<$Res>;
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class _$GameTodoDTOCopyWithImpl<$Res> implements $GameTodoDTOCopyWith<$Res> {
  _$GameTodoDTOCopyWithImpl(this._value, this._then);

  final GameTodoDTO _value;
  // ignore: unused_field
  final $Res Function(GameTodoDTO) _then;

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
abstract class _$GameTodoDTOCopyWith<$Res>
    implements $GameTodoDTOCopyWith<$Res> {
  factory _$GameTodoDTOCopyWith(
          _GameTodoDTO value, $Res Function(_GameTodoDTO) then) =
      __$GameTodoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class __$GameTodoDTOCopyWithImpl<$Res> extends _$GameTodoDTOCopyWithImpl<$Res>
    implements _$GameTodoDTOCopyWith<$Res> {
  __$GameTodoDTOCopyWithImpl(
      _GameTodoDTO _value, $Res Function(_GameTodoDTO) _then)
      : super(_value, (v) => _then(v as _GameTodoDTO));

  @override
  _GameTodoDTO get _value => super._value as _GameTodoDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? todoName = freezed,
    Object? times = freezed,
    Object? points = freezed,
    Object? done = freezed,
  }) {
    return _then(_GameTodoDTO(
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
class _$_GameTodoDTO extends _GameTodoDTO {
  const _$_GameTodoDTO(
      {required this.id,
      required this.todoName,
      required this.times,
      required this.points,
      required this.done})
      : super._();

  factory _$_GameTodoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GameTodoDTOFromJson(json);

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
    return 'GameTodoDTO(id: $id, todoName: $todoName, times: $times, points: $points, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameTodoDTO &&
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
  _$GameTodoDTOCopyWith<_GameTodoDTO> get copyWith =>
      __$GameTodoDTOCopyWithImpl<_GameTodoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameTodoDTOToJson(this);
  }
}

abstract class _GameTodoDTO extends GameTodoDTO {
  const factory _GameTodoDTO(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) = _$_GameTodoDTO;
  const _GameTodoDTO._() : super._();

  factory _GameTodoDTO.fromJson(Map<String, dynamic> json) =
      _$_GameTodoDTO.fromJson;

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
  _$GameTodoDTOCopyWith<_GameTodoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
