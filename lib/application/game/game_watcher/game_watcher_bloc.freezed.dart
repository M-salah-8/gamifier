// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameWatcherEventTearOff {
  const _$GameWatcherEventTearOff();

  _CurrentUser currentUser(GamifierUserPrimitive currentUser) {
    return _CurrentUser(
      currentUser,
    );
  }

  _WatchGamesStarted watchGamesStarted() {
    return _WatchGamesStarted();
  }

  _GamesReceived gamesReceived(
      Either<GameFailure, KtList<GameKey>> failureOrGames) {
    return _GamesReceived(
      failureOrGames,
    );
  }
}

/// @nodoc
const $GameWatcherEvent = _$GameWatcherEventTearOff();

/// @nodoc
mixin _$GameWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function() watchGamesStarted,
    required TResult Function(
            Either<GameFailure, KtList<GameKey>> failureOrGames)
        gamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_WatchGamesStarted value) watchGamesStarted,
    required TResult Function(_GamesReceived value) gamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameWatcherEventCopyWith<$Res> {
  factory $GameWatcherEventCopyWith(
          GameWatcherEvent value, $Res Function(GameWatcherEvent) then) =
      _$GameWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameWatcherEventCopyWithImpl<$Res>
    implements $GameWatcherEventCopyWith<$Res> {
  _$GameWatcherEventCopyWithImpl(this._value, this._then);

  final GameWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GameWatcherEvent) _then;
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
    extends _$GameWatcherEventCopyWithImpl<$Res>
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
    return 'GameWatcherEvent.currentUser(currentUser: $currentUser)';
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
    required TResult Function() watchGamesStarted,
    required TResult Function(
            Either<GameFailure, KtList<GameKey>> failureOrGames)
        gamesReceived,
  }) {
    return currentUser(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
  }) {
    return currentUser?.call(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
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
    required TResult Function(_WatchGamesStarted value) watchGamesStarted,
    required TResult Function(_GamesReceived value) gamesReceived,
  }) {
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
  }) {
    return currentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class _CurrentUser implements GameWatcherEvent {
  factory _CurrentUser(GamifierUserPrimitive currentUser) = _$_CurrentUser;

  GamifierUserPrimitive get currentUser;
  @JsonKey(ignore: true)
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchGamesStartedCopyWith<$Res> {
  factory _$WatchGamesStartedCopyWith(
          _WatchGamesStarted value, $Res Function(_WatchGamesStarted) then) =
      __$WatchGamesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchGamesStartedCopyWithImpl<$Res>
    extends _$GameWatcherEventCopyWithImpl<$Res>
    implements _$WatchGamesStartedCopyWith<$Res> {
  __$WatchGamesStartedCopyWithImpl(
      _WatchGamesStarted _value, $Res Function(_WatchGamesStarted) _then)
      : super(_value, (v) => _then(v as _WatchGamesStarted));

  @override
  _WatchGamesStarted get _value => super._value as _WatchGamesStarted;
}

/// @nodoc

class _$_WatchGamesStarted implements _WatchGamesStarted {
  _$_WatchGamesStarted();

  @override
  String toString() {
    return 'GameWatcherEvent.watchGamesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchGamesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function() watchGamesStarted,
    required TResult Function(
            Either<GameFailure, KtList<GameKey>> failureOrGames)
        gamesReceived,
  }) {
    return watchGamesStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
  }) {
    return watchGamesStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
    required TResult orElse(),
  }) {
    if (watchGamesStarted != null) {
      return watchGamesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_WatchGamesStarted value) watchGamesStarted,
    required TResult Function(_GamesReceived value) gamesReceived,
  }) {
    return watchGamesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
  }) {
    return watchGamesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
    required TResult orElse(),
  }) {
    if (watchGamesStarted != null) {
      return watchGamesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchGamesStarted implements GameWatcherEvent {
  factory _WatchGamesStarted() = _$_WatchGamesStarted;
}

/// @nodoc
abstract class _$GamesReceivedCopyWith<$Res> {
  factory _$GamesReceivedCopyWith(
          _GamesReceived value, $Res Function(_GamesReceived) then) =
      __$GamesReceivedCopyWithImpl<$Res>;
  $Res call({Either<GameFailure, KtList<GameKey>> failureOrGames});
}

/// @nodoc
class __$GamesReceivedCopyWithImpl<$Res>
    extends _$GameWatcherEventCopyWithImpl<$Res>
    implements _$GamesReceivedCopyWith<$Res> {
  __$GamesReceivedCopyWithImpl(
      _GamesReceived _value, $Res Function(_GamesReceived) _then)
      : super(_value, (v) => _then(v as _GamesReceived));

  @override
  _GamesReceived get _value => super._value as _GamesReceived;

  @override
  $Res call({
    Object? failureOrGames = freezed,
  }) {
    return _then(_GamesReceived(
      failureOrGames == freezed
          ? _value.failureOrGames
          : failureOrGames // ignore: cast_nullable_to_non_nullable
              as Either<GameFailure, KtList<GameKey>>,
    ));
  }
}

/// @nodoc

class _$_GamesReceived implements _GamesReceived {
  _$_GamesReceived(this.failureOrGames);

  @override
  final Either<GameFailure, KtList<GameKey>> failureOrGames;

  @override
  String toString() {
    return 'GameWatcherEvent.gamesReceived(failureOrGames: $failureOrGames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamesReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrGames, failureOrGames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrGames));

  @JsonKey(ignore: true)
  @override
  _$GamesReceivedCopyWith<_GamesReceived> get copyWith =>
      __$GamesReceivedCopyWithImpl<_GamesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function() watchGamesStarted,
    required TResult Function(
            Either<GameFailure, KtList<GameKey>> failureOrGames)
        gamesReceived,
  }) {
    return gamesReceived(failureOrGames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
  }) {
    return gamesReceived?.call(failureOrGames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function()? watchGamesStarted,
    TResult Function(Either<GameFailure, KtList<GameKey>> failureOrGames)?
        gamesReceived,
    required TResult orElse(),
  }) {
    if (gamesReceived != null) {
      return gamesReceived(failureOrGames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_WatchGamesStarted value) watchGamesStarted,
    required TResult Function(_GamesReceived value) gamesReceived,
  }) {
    return gamesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
  }) {
    return gamesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_WatchGamesStarted value)? watchGamesStarted,
    TResult Function(_GamesReceived value)? gamesReceived,
    required TResult orElse(),
  }) {
    if (gamesReceived != null) {
      return gamesReceived(this);
    }
    return orElse();
  }
}

abstract class _GamesReceived implements GameWatcherEvent {
  factory _GamesReceived(Either<GameFailure, KtList<GameKey>> failureOrGames) =
      _$_GamesReceived;

  Either<GameFailure, KtList<GameKey>> get failureOrGames;
  @JsonKey(ignore: true)
  _$GamesReceivedCopyWith<_GamesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameWatcherStateTearOff {
  const _$GameWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<GameKeyPrimitive> gamekeys) {
    return _LoadSuccess(
      gamekeys,
    );
  }

  _LoadFailure loadFailure(GameFailure gameFailure) {
    return _LoadFailure(
      gameFailure,
    );
  }
}

/// @nodoc
const $GameWatcherState = _$GameWatcherStateTearOff();

/// @nodoc
mixin _$GameWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameKeyPrimitive> gamekeys) loadSuccess,
    required TResult Function(GameFailure gameFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameWatcherStateCopyWith<$Res> {
  factory $GameWatcherStateCopyWith(
          GameWatcherState value, $Res Function(GameWatcherState) then) =
      _$GameWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameWatcherStateCopyWithImpl<$Res>
    implements $GameWatcherStateCopyWith<$Res> {
  _$GameWatcherStateCopyWithImpl(this._value, this._then);

  final GameWatcherState _value;
  // ignore: unused_field
  final $Res Function(GameWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GameWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GameWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameKeyPrimitive> gamekeys) loadSuccess,
    required TResult Function(GameFailure gameFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$GameWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'GameWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameKeyPrimitive> gamekeys) loadSuccess,
    required TResult Function(GameFailure gameFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements GameWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<GameKeyPrimitive> gamekeys});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$GameWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? gamekeys = freezed,
  }) {
    return _then(_LoadSuccess(
      gamekeys == freezed
          ? _value.gamekeys
          : gamekeys // ignore: cast_nullable_to_non_nullable
              as KtList<GameKeyPrimitive>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.gamekeys);

  @override
  final KtList<GameKeyPrimitive> gamekeys;

  @override
  String toString() {
    return 'GameWatcherState.loadSuccess(gamekeys: $gamekeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.gamekeys, gamekeys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gamekeys));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameKeyPrimitive> gamekeys) loadSuccess,
    required TResult Function(GameFailure gameFailure) loadFailure,
  }) {
    return loadSuccess(gamekeys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
  }) {
    return loadSuccess?.call(gamekeys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(gamekeys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements GameWatcherState {
  const factory _LoadSuccess(KtList<GameKeyPrimitive> gamekeys) =
      _$_LoadSuccess;

  KtList<GameKeyPrimitive> get gamekeys;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({GameFailure gameFailure});

  $GameFailureCopyWith<$Res> get gameFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$GameWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? gameFailure = freezed,
  }) {
    return _then(_LoadFailure(
      gameFailure == freezed
          ? _value.gameFailure
          : gameFailure // ignore: cast_nullable_to_non_nullable
              as GameFailure,
    ));
  }

  @override
  $GameFailureCopyWith<$Res> get gameFailure {
    return $GameFailureCopyWith<$Res>(_value.gameFailure, (value) {
      return _then(_value.copyWith(gameFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.gameFailure);

  @override
  final GameFailure gameFailure;

  @override
  String toString() {
    return 'GameWatcherState.loadFailure(gameFailure: $gameFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.gameFailure, gameFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gameFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<GameKeyPrimitive> gamekeys) loadSuccess,
    required TResult Function(GameFailure gameFailure) loadFailure,
  }) {
    return loadFailure(gameFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
  }) {
    return loadFailure?.call(gameFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<GameKeyPrimitive> gamekeys)? loadSuccess,
    TResult Function(GameFailure gameFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(gameFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements GameWatcherState {
  const factory _LoadFailure(GameFailure gameFailure) = _$_LoadFailure;

  GameFailure get gameFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
