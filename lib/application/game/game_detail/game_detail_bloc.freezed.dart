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

  _CurrentUser currentUser(GamifierUserPrimitive currentUser) {
    return _CurrentUser(
      currentUser,
    );
  }

  _Initialized initialized(
      GamePrimitive? game, List<UserScorePrimitive>? gamescores) {
    return _Initialized(
      game,
      gamescores,
    );
  }

  _NameChanged nameChanged(String gameName) {
    return _NameChanged(
      gameName,
    );
  }

  _LevelChanged levelChanged(int todoPoints) {
    return _LevelChanged(
      todoPoints,
    );
  }

  _FriendAdded friendAdded(GamifierUserPrimitive friend) {
    return _FriendAdded(
      friend,
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
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
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
abstract class _$CurrentUserCopyWith<$Res> {
  factory _$CurrentUserCopyWith(
          _CurrentUser value, $Res Function(_CurrentUser) then) =
      __$CurrentUserCopyWithImpl<$Res>;
  $Res call({GamifierUserPrimitive currentUser});

  $GamifierUserPrimitiveCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$CurrentUserCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
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
    return 'GameDetailEvent.currentUser(currentUser: $currentUser)';
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
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return currentUser(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return currentUser?.call(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return currentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class _CurrentUser implements GameDetailEvent {
  factory _CurrentUser(GamifierUserPrimitive currentUser) = _$_CurrentUser;

  GamifierUserPrimitive get currentUser;
  @JsonKey(ignore: true)
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({GamePrimitive? game, List<UserScorePrimitive>? gamescores});

  $GamePrimitiveCopyWith<$Res>? get game;
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
    Object? gamescores = freezed,
  }) {
    return _then(_Initialized(
      game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive?,
      gamescores == freezed
          ? _value.gamescores
          : gamescores // ignore: cast_nullable_to_non_nullable
              as List<UserScorePrimitive>?,
    ));
  }

  @override
  $GamePrimitiveCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GamePrimitiveCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.game, this.gamescores);

  @override
  final GamePrimitive? game;
  @override
  final List<UserScorePrimitive>? gamescores;

  @override
  String toString() {
    return 'GameDetailEvent.initialized(game: $game, gamescores: $gamescores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(other.game, game) &&
            const DeepCollectionEquality()
                .equals(other.gamescores, gamescores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(game),
      const DeepCollectionEquality().hash(gamescores));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return initialized(game, gamescores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(game, gamescores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(game, gamescores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
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
  const factory _Initialized(
          GamePrimitive? game, List<UserScorePrimitive>? gamescores) =
      _$_Initialized;

  GamePrimitive? get game;
  List<UserScorePrimitive>? get gamescores;
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
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(gameName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(gameName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
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
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
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
abstract class _$LevelChangedCopyWith<$Res> {
  factory _$LevelChangedCopyWith(
          _LevelChanged value, $Res Function(_LevelChanged) then) =
      __$LevelChangedCopyWithImpl<$Res>;
  $Res call({int todoPoints});
}

/// @nodoc
class __$LevelChangedCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$LevelChangedCopyWith<$Res> {
  __$LevelChangedCopyWithImpl(
      _LevelChanged _value, $Res Function(_LevelChanged) _then)
      : super(_value, (v) => _then(v as _LevelChanged));

  @override
  _LevelChanged get _value => super._value as _LevelChanged;

  @override
  $Res call({
    Object? todoPoints = freezed,
  }) {
    return _then(_LevelChanged(
      todoPoints == freezed
          ? _value.todoPoints
          : todoPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LevelChanged implements _LevelChanged {
  const _$_LevelChanged(this.todoPoints);

  @override
  final int todoPoints;

  @override
  String toString() {
    return 'GameDetailEvent.levelChanged(todoPoints: $todoPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LevelChanged &&
            const DeepCollectionEquality()
                .equals(other.todoPoints, todoPoints));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoPoints));

  @JsonKey(ignore: true)
  @override
  _$LevelChangedCopyWith<_LevelChanged> get copyWith =>
      __$LevelChangedCopyWithImpl<_LevelChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return levelChanged(todoPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return levelChanged?.call(todoPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (levelChanged != null) {
      return levelChanged(todoPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return levelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return levelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (levelChanged != null) {
      return levelChanged(this);
    }
    return orElse();
  }
}

abstract class _LevelChanged implements GameDetailEvent {
  const factory _LevelChanged(int todoPoints) = _$_LevelChanged;

  int get todoPoints;
  @JsonKey(ignore: true)
  _$LevelChangedCopyWith<_LevelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FriendAddedCopyWith<$Res> {
  factory _$FriendAddedCopyWith(
          _FriendAdded value, $Res Function(_FriendAdded) then) =
      __$FriendAddedCopyWithImpl<$Res>;
  $Res call({GamifierUserPrimitive friend});

  $GamifierUserPrimitiveCopyWith<$Res> get friend;
}

/// @nodoc
class __$FriendAddedCopyWithImpl<$Res>
    extends _$GameDetailEventCopyWithImpl<$Res>
    implements _$FriendAddedCopyWith<$Res> {
  __$FriendAddedCopyWithImpl(
      _FriendAdded _value, $Res Function(_FriendAdded) _then)
      : super(_value, (v) => _then(v as _FriendAdded));

  @override
  _FriendAdded get _value => super._value as _FriendAdded;

  @override
  $Res call({
    Object? friend = freezed,
  }) {
    return _then(_FriendAdded(
      friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get friend {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc

class _$_FriendAdded implements _FriendAdded {
  const _$_FriendAdded(this.friend);

  @override
  final GamifierUserPrimitive friend;

  @override
  String toString() {
    return 'GameDetailEvent.friendAdded(friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendAdded &&
            const DeepCollectionEquality().equals(other.friend, friend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(friend));

  @JsonKey(ignore: true)
  @override
  _$FriendAddedCopyWith<_FriendAdded> get copyWith =>
      __$FriendAddedCopyWithImpl<_FriendAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return friendAdded(friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return friendAdded?.call(friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (friendAdded != null) {
      return friendAdded(friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return friendAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return friendAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (friendAdded != null) {
      return friendAdded(this);
    }
    return orElse();
  }
}

abstract class _FriendAdded implements GameDetailEvent {
  const factory _FriendAdded(GamifierUserPrimitive friend) = _$_FriendAdded;

  GamifierUserPrimitive get friend;
  @JsonKey(ignore: true)
  _$FriendAddedCopyWith<_FriendAdded> get copyWith =>
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
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return gameTodosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return gameTodosChanged?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
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
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return gameTodosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return gameTodosChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
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
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(
            GamePrimitive? game, List<UserScorePrimitive>? gamescores)
        initialized,
    required TResult Function(String gameName) nameChanged,
    required TResult Function(int todoPoints) levelChanged,
    required TResult Function(GamifierUserPrimitive friend) friendAdded,
    required TResult Function(KtList<GameTodoPrimitive> todos) gameTodosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
    TResult Function(KtList<GameTodoPrimitive> todos)? gameTodosChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamePrimitive? game, List<UserScorePrimitive>? gamescores)?
        initialized,
    TResult Function(String gameName)? nameChanged,
    TResult Function(int todoPoints)? levelChanged,
    TResult Function(GamifierUserPrimitive friend)? friendAdded,
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
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_GameTodosChanged value) gameTodosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_GameTodosChanged value)? gameTodosChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_FriendAdded value)? friendAdded,
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
      {required GamePrimitive game,
      required int level,
      required GamifierUserPrimitive currentUser,
      required List<UserScorePrimitive> friendsScores,
      required bool showErrorMessages,
      required bool isAdmin,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption}) {
    return _GameDetailState(
      game: game,
      level: level,
      currentUser: currentUser,
      friendsScores: friendsScores,
      showErrorMessages: showErrorMessages,
      isAdmin: isAdmin,
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
  GamePrimitive get game => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  GamifierUserPrimitive get currentUser => throw _privateConstructorUsedError;
  List<UserScorePrimitive> get friendsScores =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
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
      {GamePrimitive game,
      int level,
      GamifierUserPrimitive currentUser,
      List<UserScorePrimitive> friendsScores,
      bool showErrorMessages,
      bool isAdmin,
      bool isEditing,
      bool isSaving,
      Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption});

  $GamePrimitiveCopyWith<$Res> get game;
  $GamifierUserPrimitiveCopyWith<$Res> get currentUser;
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
    Object? level = freezed,
    Object? currentUser = freezed,
    Object? friendsScores = freezed,
    Object? showErrorMessages = freezed,
    Object? isAdmin = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
      friendsScores: friendsScores == freezed
          ? _value.friendsScores
          : friendsScores // ignore: cast_nullable_to_non_nullable
              as List<UserScorePrimitive>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
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
  $GamePrimitiveCopyWith<$Res> get game {
    return $GamePrimitiveCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get currentUser {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
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
      {GamePrimitive game,
      int level,
      GamifierUserPrimitive currentUser,
      List<UserScorePrimitive> friendsScores,
      bool showErrorMessages,
      bool isAdmin,
      bool isEditing,
      bool isSaving,
      Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $GamePrimitiveCopyWith<$Res> get game;
  @override
  $GamifierUserPrimitiveCopyWith<$Res> get currentUser;
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
    Object? level = freezed,
    Object? currentUser = freezed,
    Object? friendsScores = freezed,
    Object? showErrorMessages = freezed,
    Object? isAdmin = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_GameDetailState(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
      friendsScores: friendsScores == freezed
          ? _value.friendsScores
          : friendsScores // ignore: cast_nullable_to_non_nullable
              as List<UserScorePrimitive>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
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
      required this.level,
      required this.currentUser,
      required this.friendsScores,
      required this.showErrorMessages,
      required this.isAdmin,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final GamePrimitive game;
  @override
  final int level;
  @override
  final GamifierUserPrimitive currentUser;
  @override
  final List<UserScorePrimitive> friendsScores;
  @override
  final bool showErrorMessages;
  @override
  final bool isAdmin;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'GameDetailState(game: $game, level: $level, currentUser: $currentUser, friendsScores: $friendsScores, showErrorMessages: $showErrorMessages, isAdmin: $isAdmin, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameDetailState &&
            const DeepCollectionEquality().equals(other.game, game) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality()
                .equals(other.friendsScores, friendsScores) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(game),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(friendsScores),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isAdmin),
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
      {required GamePrimitive game,
      required int level,
      required GamifierUserPrimitive currentUser,
      required List<UserScorePrimitive> friendsScores,
      required bool showErrorMessages,
      required bool isAdmin,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<GameFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_GameDetailState;

  @override
  GamePrimitive get game;
  @override
  int get level;
  @override
  GamifierUserPrimitive get currentUser;
  @override
  List<UserScorePrimitive> get friendsScores;
  @override
  bool get showErrorMessages;
  @override
  bool get isAdmin;
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
