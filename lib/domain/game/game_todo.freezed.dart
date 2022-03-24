// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameTodoTearOff {
  const _$GameTodoTearOff();

  _GameTodo call(
      {required UniqueId id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) {
    return _GameTodo(
      id: id,
      todoName: todoName,
      times: times,
      points: points,
      done: done,
    );
  }
}

/// @nodoc
const $GameTodo = _$GameTodoTearOff();

/// @nodoc
mixin _$GameTodo {
  UniqueId get id => throw _privateConstructorUsedError;
  String get todoName => throw _privateConstructorUsedError;
  int get times => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameTodoCopyWith<GameTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTodoCopyWith<$Res> {
  factory $GameTodoCopyWith(GameTodo value, $Res Function(GameTodo) then) =
      _$GameTodoCopyWithImpl<$Res>;
  $Res call({UniqueId id, String todoName, int times, int points, bool done});
}

/// @nodoc
class _$GameTodoCopyWithImpl<$Res> implements $GameTodoCopyWith<$Res> {
  _$GameTodoCopyWithImpl(this._value, this._then);

  final GameTodo _value;
  // ignore: unused_field
  final $Res Function(GameTodo) _then;

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
              as UniqueId,
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
abstract class _$GameTodoCopyWith<$Res> implements $GameTodoCopyWith<$Res> {
  factory _$GameTodoCopyWith(_GameTodo value, $Res Function(_GameTodo) then) =
      __$GameTodoCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String todoName, int times, int points, bool done});
}

/// @nodoc
class __$GameTodoCopyWithImpl<$Res> extends _$GameTodoCopyWithImpl<$Res>
    implements _$GameTodoCopyWith<$Res> {
  __$GameTodoCopyWithImpl(_GameTodo _value, $Res Function(_GameTodo) _then)
      : super(_value, (v) => _then(v as _GameTodo));

  @override
  _GameTodo get _value => super._value as _GameTodo;

  @override
  $Res call({
    Object? id = freezed,
    Object? todoName = freezed,
    Object? times = freezed,
    Object? points = freezed,
    Object? done = freezed,
  }) {
    return _then(_GameTodo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$_GameTodo implements _GameTodo {
  const _$_GameTodo(
      {required this.id,
      required this.todoName,
      required this.times,
      required this.points,
      required this.done});

  @override
  final UniqueId id;
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
    return 'GameTodo(id: $id, todoName: $todoName, times: $times, points: $points, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameTodo &&
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
  _$GameTodoCopyWith<_GameTodo> get copyWith =>
      __$GameTodoCopyWithImpl<_GameTodo>(this, _$identity);
}

abstract class _GameTodo implements GameTodo {
  const factory _GameTodo(
      {required UniqueId id,
      required String todoName,
      required int times,
      required int points,
      required bool done}) = _$_GameTodo;

  @override
  UniqueId get id;
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
  _$GameTodoCopyWith<_GameTodo> get copyWith =>
      throw _privateConstructorUsedError;
}
