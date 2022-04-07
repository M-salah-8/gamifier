// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_todo_primitive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameTodoPrimitiveTearOff {
  const _$GameTodoPrimitiveTearOff();

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
abstract class _$GameTodoDTOCopyWith<$Res>
    implements $GameTodoPrimitiveCopyWith<$Res> {
  factory _$GameTodoDTOCopyWith(
          _GameTodoDTO value, $Res Function(_GameTodoDTO) then) =
      __$GameTodoDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String todoName, int times, int points, bool done});
}

/// @nodoc
class __$GameTodoDTOCopyWithImpl<$Res>
    extends _$GameTodoPrimitiveCopyWithImpl<$Res>
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

class _$_GameTodoDTO extends _GameTodoDTO {
  const _$_GameTodoDTO(
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
}

abstract class _GameTodoDTO extends GameTodoPrimitive {
  const factory _GameTodoDTO(
      {required String id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) = _$_GameTodoDTO;
  const _GameTodoDTO._() : super._();

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
