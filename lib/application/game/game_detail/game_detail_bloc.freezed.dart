// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameDetailEventTearOff {
  const _$GameDetailEventTearOff();

  _Initialized initialized(Game? game) {
    return _Initialized(
      game,
    );
  }

  _NameChanged nameChanged(String gameName) {
    return _NameChanged(
      gameName,
    );
  }

  _LevelInceased levelInceased(int points) {
    return _LevelInceased(
      points,
    );
  }

  _GameTodosChanged gameTodosChanged(KtList<GameTodoPrimitive> todos) {
    return _GameTodosChanged(
      todos,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $GameDetailEvent = _$GameDetailEventTearOff();

/// @nodoc
mixin _$GameDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? game) initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int points) levelInceased,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelInceased value) levelInceased,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailEventCopyWith<$Res> {
  factory $GameDetailEventCopyWith(
          GameDetailEvent value, $Res Function(GameDetailEvent) then) =
      _$GameDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameDetailEventCopyWithImpl<$Res>
    implements $GameDetailEventCopyWith<$Res> {
  _$GameDetailEventCopyWithImpl(this._value, this._then);

  final GameDetailEvent _value;
  // ignore: unused_field
  final $Res Function(GameDetailEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Game? game});

  $GameCopyWith<$Res>? get game;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_Initialized(
      game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
    ));
  }

  @override
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.game);

  @override
  final Game? game;

  @override
  String toString() {
    return 'GameDetailEvent.initialized(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.game, game));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(game));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? game) initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int points) levelInceased,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return initialized(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelInceased value) levelInceased,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements GameDetailEvent {
  const factory _Initialized(Game? game) = _$_Initialized;

  Game? get game;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String gameName});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? gameName = freezed,
  }) {
    return _then(_NameChanged(
      gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.gameName);

  @override
  final String gameName;

  @override
  String toString() {
    return 'GameDetailEvent.nameChanged(gameName: $gameName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameChanged &&
            const DeepCollectionEquality().equals(other.gameName, gameName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameName));

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? game) initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int points) levelInceased,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(gameName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(gameName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(gameName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelInceased value) levelInceased,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements GameDetailEvent {
  const factory _NameChanged(String gameName) = _$_NameChanged;

  String get gameName;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LevelInceasedCopyWith<$Res> {
  factory _$LevelInceasedCopyWith(
          _LevelInceased value, $Res Function(_LevelInceased) then) =
      __$LevelInceasedCopyWithImpl<$Res>;
  $Res call({int points});
}

/// @nodoc
class __$LevelInceasedCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$LevelInceasedCopyWith<$Res> {
  __$LevelInceasedCopyWithImpl(
      _LevelInceased _value, $Res Function(_LevelInceased) _then)
      : super(_value, (v) => _then(v as _LevelInceased));

  @override
  _LevelInceased get _value => super._value as _LevelInceased;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_LevelInceased(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LevelInceased implements _LevelInceased {
  const _$_LevelInceased(this.points);

  @override
  final int points;

  @override
  String toString() {
    return 'GameDetailEvent.levelInceased(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LevelInceased &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(points));

  @JsonKey(ignore: true)
  @override
  _$LevelInceasedCopyWith<_LevelInceased> get copyWith =>
      __$LevelInceasedCopyWithImpl<_LevelInceased>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? game) initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int points) levelInceased,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return levelInceased(points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return levelInceased?.call(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (levelInceased != null) {
      return levelInceased(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelInceased value) levelInceased,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return levelInceased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return levelInceased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (levelInceased != null) {
      return levelInceased(this);
    }
    return orElse();
  }
}

abstract class _LevelInceased implements GameDetailEvent {
  const factory _LevelInceased(int points) = _$_LevelInceased;

  int get points;
  @JsonKey(ignore: true)
  _$LevelInceasedCopyWith<_LevelInceased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GameTodosChangedCopyWith<$Res> {
  factory _$GameTodosChangedCopyWith(
          _GameTodosChanged value, $Res Function(_GameTodosChanged) then) =
      __$GameTodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<GameTodoPrimitive> todos});
}

/// @nodoc
class __$GameTodosChangedCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$GameTodosChangedCopyWith<$Res> {
  __$GameTodosChangedCopyWithImpl(
      _GameTodosChanged _value, $Res Function(_GameTodosChanged) _then)
      : super(_value, (v) => _then(v as _GameTodosChanged));

  @override
  _GameTodosChanged get _value => super._value as _GameTodosChanged;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_GameTodosChanged(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodoPrimitive>,
    ));
  }
}

/// @nodoc

class _$_GameTodosChanged implements _GameTodosChanged {
  const _$_GameTodosChanged(this.todos);

  @override
  final KtList<GameTodoPrimitive> todos;

  @override
  String toString() {
    return 'GameDetailEvent.gameTodosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameTodosChanged &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$GameTodosChangedCopyWith<_GameTodosChanged> get copyWith =>
      __$GameTodosChangedCopyWithImpl<_GameTodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? game) initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int points) levelInceased,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return gameTodosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return gameTodosChanged?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (gameTodosChanged != null) {
      return gameTodosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelInceased value) levelInceased,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return gameTodosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return gameTodosChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (gameTodosChanged != null) {
      return gameTodosChanged(this);
    }
    return orElse();
  }
}

abstract class _GameTodosChanged implements GameDetailEvent {
  const factory _GameTodosChanged(KtList<GameTodoPrimitive> todos) =
      _$_GameTodosChanged;

  KtList<GameTodoPrimitive> get todos;
  @JsonKey(ignore: true)
  _$GameTodosChangedCopyWith<_GameTodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'GameDetailEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Game? game) initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int points) levelInceased,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Game? game)? initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int points)? levelInceased,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelInceased value) levelInceased,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelInceased value)? levelInceased,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements GameDetailEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$GameDetailStateTearOff {
  const _$GameDetailStateTearOff();

  _GameDetailState call(
      {required Game game,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption}) {
    return _GameDetailState(
      game: game,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $GameDetailState = _$GameDetailStateTearOff();

/// @nodoc
mixin _$GameDetailState {
  Game get game => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<GameFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDetailStateCopyWith<GameDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailStateCopyWith<$Res> {
  factory $GameDetailStateCopyWith(
          GameDetailState value, $Res Function(GameDetailState) then) =
      _$GameDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Game game,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class _$GameDetailStateCopyWithImpl<$Res>
    implements $GameDetailStateCopyWith<$Res> {
  _$GameDetailStateCopyWithImpl(this._value, this._then);

  final GameDetailState _value;
  // ignore: unused_field
  final $Res Function(GameDetailState) _then;

  @override
  $Res call({
    Object? game = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GameFailure, Unit>>,
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
abstract class _$GameDetailStateCopyWith<$Res>
    implements $GameDetailStateCopyWith<$Res> {
  factory _$GameDetailStateCopyWith(
          _GameDetailState value, $Res Function(_GameDetailState) then) =
      __$GameDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Game game,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$GameDetailStateCopyWithImpl<$Res>
    extends _$GameDetailStateCopyWithImpl<$Res>
    implements _$GameDetailStateCopyWith<$Res> {
  __$GameDetailStateCopyWithImpl(
      _GameDetailState _value, $Res Function(_GameDetailState) _then)
      : super(_value, (v) => _then(v as _GameDetailState));

  @override
  _GameDetailState get _value => super._value as _GameDetailState;

  @override
  $Res call({
    Object? game = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_GameDetailState(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<GameFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_GameDetailState implements _GameDetailState {
  const _$_GameDetailState(
      {required this.game,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Game game;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'GameDetailState(game: $game, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDetailState &&
            const DeepCollectionEquality().equals(other.game, game) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(game),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$GameDetailStateCopyWith<_GameDetailState> get copyWith =>
      __$GameDetailStateCopyWithImpl<_GameDetailState>(this, _$identity);
}

abstract class _GameDetailState implements GameDetailState {
  const factory _GameDetailState(
      {required Game game,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<GameFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_GameDetailState;

  @override
  Game get game;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<GameFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$GameDetailStateCopyWith<_GameDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
