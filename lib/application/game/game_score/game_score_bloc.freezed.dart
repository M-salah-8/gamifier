// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_score_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameScoreEventTearOff {
  const _$GameScoreEventTearOff();

  _CurrentUser currentUser(GamifierUserPrimitive currentUser) {
    return _CurrentUser(
      currentUser,
    );
  }

  _TodoChecked todoChecked(
      {required String gameId,
      required String userId,
      required GameTodoPrimitive todo,
      required int level}) {
    return _TodoChecked(
      gameId: gameId,
      userId: userId,
      todo: todo,
      level: level,
    );
  }
}

/// @nodoc
const $GameScoreEvent = _$GameScoreEventTearOff();

/// @nodoc
mixin _$GameScoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)
        todoChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)?
        todoChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)?
        todoChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_TodoChecked value) todoChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_TodoChecked value)? todoChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_TodoChecked value)? todoChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreEventCopyWith<$Res> {
  factory $GameScoreEventCopyWith(
          GameScoreEvent value, $Res Function(GameScoreEvent) then) =
      _$GameScoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventCopyWith<$Res> {
  _$GameScoreEventCopyWithImpl(this._value, this._then);

  final GameScoreEvent _value;
  // ignore: unused_field
  final $Res Function(GameScoreEvent) _then;
}

/// @nodoc
abstract class _$CurrentUserCopyWith<$Res> {
  factory _$CurrentUserCopyWith(
          _CurrentUser value, $Res Function(_CurrentUser) then) =
      __$CurrentUserCopyWithImpl<$Res>;
  $Res call({GamifierUserPrimitive currentUser});

  $GamifierUserPrimitiveCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$CurrentUserCopyWithImpl<$Res>
    extends _$GameScoreEventCopyWithImpl<$Res>
    implements _$CurrentUserCopyWith<$Res> {
  __$CurrentUserCopyWithImpl(
      _CurrentUser _value, $Res Function(_CurrentUser) _then)
      : super(_value, (v) => _then(v as _CurrentUser));

  @override
  _CurrentUser get _value => super._value as _CurrentUser;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_CurrentUser(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get currentUser {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$_CurrentUser implements _CurrentUser {
  _$_CurrentUser(this.currentUser);

  @override
  final GamifierUserPrimitive currentUser;

  @override
  String toString() {
    return 'GameScoreEvent.currentUser(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentUser &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentUser));

  @JsonKey(ignore: true)
  @override
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      __$CurrentUserCopyWithImpl<_CurrentUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)
        todoChecked,
  }) {
    return currentUser(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)?
        todoChecked,
  }) {
    return currentUser?.call(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)?
        todoChecked,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this.currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_TodoChecked value) todoChecked,
  }) {
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_TodoChecked value)? todoChecked,
  }) {
    return currentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_TodoChecked value)? todoChecked,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class _CurrentUser implements GameScoreEvent {
  factory _CurrentUser(GamifierUserPrimitive currentUser) = _$_CurrentUser;

  GamifierUserPrimitive get currentUser;
  @JsonKey(ignore: true)
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoCheckedCopyWith<$Res> {
  factory _$TodoCheckedCopyWith(
          _TodoChecked value, $Res Function(_TodoChecked) then) =
      __$TodoCheckedCopyWithImpl<$Res>;
  $Res call({String gameId, String userId, GameTodoPrimitive todo, int level});

  $GameTodoPrimitiveCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoCheckedCopyWithImpl<$Res>
    extends _$GameScoreEventCopyWithImpl<$Res>
    implements _$TodoCheckedCopyWith<$Res> {
  __$TodoCheckedCopyWithImpl(
      _TodoChecked _value, $Res Function(_TodoChecked) _then)
      : super(_value, (v) => _then(v as _TodoChecked));

  @override
  _TodoChecked get _value => super._value as _TodoChecked;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? userId = freezed,
    Object? todo = freezed,
    Object? level = freezed,
  }) {
    return _then(_TodoChecked(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as GameTodoPrimitive,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $GameTodoPrimitiveCopyWith<$Res> get todo {
    return $GameTodoPrimitiveCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_TodoChecked implements _TodoChecked {
  _$_TodoChecked(
      {required this.gameId,
      required this.userId,
      required this.todo,
      required this.level});

  @override
  final String gameId;
  @override
  final String userId;
  @override
  final GameTodoPrimitive todo;
  @override
  final int level;

  @override
  String toString() {
    return 'GameScoreEvent.todoChecked(gameId: $gameId, userId: $userId, todo: $todo, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoChecked &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$TodoCheckedCopyWith<_TodoChecked> get copyWith =>
      __$TodoCheckedCopyWithImpl<_TodoChecked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)
        todoChecked,
  }) {
    return todoChecked(gameId, userId, todo, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)?
        todoChecked,
  }) {
    return todoChecked?.call(gameId, userId, todo, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(
            String gameId, String userId, GameTodoPrimitive todo, int level)?
        todoChecked,
    required TResult orElse(),
  }) {
    if (todoChecked != null) {
      return todoChecked(gameId, userId, todo, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_TodoChecked value) todoChecked,
  }) {
    return todoChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_TodoChecked value)? todoChecked,
  }) {
    return todoChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_TodoChecked value)? todoChecked,
    required TResult orElse(),
  }) {
    if (todoChecked != null) {
      return todoChecked(this);
    }
    return orElse();
  }
}

abstract class _TodoChecked implements GameScoreEvent {
  factory _TodoChecked(
      {required String gameId,
      required String userId,
      required GameTodoPrimitive todo,
      required int level}) = _$_TodoChecked;

  String get gameId;
  String get userId;
  GameTodoPrimitive get todo;
  int get level;
  @JsonKey(ignore: true)
  _$TodoCheckedCopyWith<_TodoChecked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameScoreStateTearOff {
  const _$GameScoreStateTearOff();

  _GameScoreState call(int todoPoints) {
    return _GameScoreState(
      todoPoints,
    );
  }
}

/// @nodoc
const $GameScoreState = _$GameScoreStateTearOff();

/// @nodoc
mixin _$GameScoreState {
  int get todoPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameScoreStateCopyWith<GameScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreStateCopyWith<$Res> {
  factory $GameScoreStateCopyWith(
          GameScoreState value, $Res Function(GameScoreState) then) =
      _$GameScoreStateCopyWithImpl<$Res>;
  $Res call({int todoPoints});
}

/// @nodoc
class _$GameScoreStateCopyWithImpl<$Res>
    implements $GameScoreStateCopyWith<$Res> {
  _$GameScoreStateCopyWithImpl(this._value, this._then);

  final GameScoreState _value;
  // ignore: unused_field
  final $Res Function(GameScoreState) _then;

  @override
  $Res call({
    Object? todoPoints = freezed,
  }) {
    return _then(_value.copyWith(
      todoPoints: todoPoints == freezed
          ? _value.todoPoints
          : todoPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameScoreStateCopyWith<$Res>
    implements $GameScoreStateCopyWith<$Res> {
  factory _$GameScoreStateCopyWith(
          _GameScoreState value, $Res Function(_GameScoreState) then) =
      __$GameScoreStateCopyWithImpl<$Res>;
  @override
  $Res call({int todoPoints});
}

/// @nodoc
class __$GameScoreStateCopyWithImpl<$Res>
    extends _$GameScoreStateCopyWithImpl<$Res>
    implements _$GameScoreStateCopyWith<$Res> {
  __$GameScoreStateCopyWithImpl(
      _GameScoreState _value, $Res Function(_GameScoreState) _then)
      : super(_value, (v) => _then(v as _GameScoreState));

  @override
  _GameScoreState get _value => super._value as _GameScoreState;

  @override
  $Res call({
    Object? todoPoints = freezed,
  }) {
    return _then(_GameScoreState(
      todoPoints == freezed
          ? _value.todoPoints
          : todoPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameScoreState implements _GameScoreState {
  _$_GameScoreState(this.todoPoints);

  @override
  final int todoPoints;

  @override
  String toString() {
    return 'GameScoreState(todoPoints: $todoPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameScoreState &&
            const DeepCollectionEquality()
                .equals(other.todoPoints, todoPoints));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoPoints));

  @JsonKey(ignore: true)
  @override
  _$GameScoreStateCopyWith<_GameScoreState> get copyWith =>
      __$GameScoreStateCopyWithImpl<_GameScoreState>(this, _$identity);
}

abstract class _GameScoreState implements GameScoreState {
  factory _GameScoreState(int todoPoints) = _$_GameScoreState;

  @override
  int get todoPoints;
  @override
  @JsonKey(ignore: true)
  _$GameScoreStateCopyWith<_GameScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
