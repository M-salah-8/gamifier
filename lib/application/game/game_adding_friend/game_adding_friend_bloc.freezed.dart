// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_adding_friend_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameAddingFriendEventTearOff {
  const _$GameAddingFriendEventTearOff();

  _addFriend addFriend(GamePrimitive game, GamifierUserPrimitive friend) {
    return _addFriend(
      game,
      friend,
    );
  }
}

/// @nodoc
const $GameAddingFriendEvent = _$GameAddingFriendEventTearOff();

/// @nodoc
mixin _$GameAddingFriendEvent {
  GamePrimitive get game => throw _privateConstructorUsedError;
  GamifierUserPrimitive get friend => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game, GamifierUserPrimitive friend)
        addFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game, GamifierUserPrimitive friend)?
        addFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game, GamifierUserPrimitive friend)?
        addFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addFriend value) addFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_addFriend value)? addFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addFriend value)? addFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameAddingFriendEventCopyWith<GameAddingFriendEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAddingFriendEventCopyWith<$Res> {
  factory $GameAddingFriendEventCopyWith(GameAddingFriendEvent value,
          $Res Function(GameAddingFriendEvent) then) =
      _$GameAddingFriendEventCopyWithImpl<$Res>;
  $Res call({GamePrimitive game, GamifierUserPrimitive friend});

  $GamePrimitiveCopyWith<$Res> get game;
  $GamifierUserPrimitiveCopyWith<$Res> get friend;
}

/// @nodoc
class _$GameAddingFriendEventCopyWithImpl<$Res>
    implements $GameAddingFriendEventCopyWith<$Res> {
  _$GameAddingFriendEventCopyWithImpl(this._value, this._then);

  final GameAddingFriendEvent _value;
  // ignore: unused_field
  final $Res Function(GameAddingFriendEvent) _then;

  @override
  $Res call({
    Object? game = freezed,
    Object? friend = freezed,
  }) {
    return _then(_value.copyWith(
      game: game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
      friend: friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }

  @override
  $GamePrimitiveCopyWith<$Res> get game {
    return $GamePrimitiveCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get friend {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.friend, (value) {
      return _then(_value.copyWith(friend: value));
    });
  }
}

/// @nodoc
abstract class _$addFriendCopyWith<$Res>
    implements $GameAddingFriendEventCopyWith<$Res> {
  factory _$addFriendCopyWith(
          _addFriend value, $Res Function(_addFriend) then) =
      __$addFriendCopyWithImpl<$Res>;
  @override
  $Res call({GamePrimitive game, GamifierUserPrimitive friend});

  @override
  $GamePrimitiveCopyWith<$Res> get game;
  @override
  $GamifierUserPrimitiveCopyWith<$Res> get friend;
}

/// @nodoc
class __$addFriendCopyWithImpl<$Res>
    extends _$GameAddingFriendEventCopyWithImpl<$Res>
    implements _$addFriendCopyWith<$Res> {
  __$addFriendCopyWithImpl(_addFriend _value, $Res Function(_addFriend) _then)
      : super(_value, (v) => _then(v as _addFriend));

  @override
  _addFriend get _value => super._value as _addFriend;

  @override
  $Res call({
    Object? game = freezed,
    Object? friend = freezed,
  }) {
    return _then(_addFriend(
      game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
      friend == freezed
          ? _value.friend
          : friend // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }
}

/// @nodoc

class _$_addFriend implements _addFriend {
  _$_addFriend(this.game, this.friend);

  @override
  final GamePrimitive game;
  @override
  final GamifierUserPrimitive friend;

  @override
  String toString() {
    return 'GameAddingFriendEvent.addFriend(game: $game, friend: $friend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _addFriend &&
            const DeepCollectionEquality().equals(other.game, game) &&
            const DeepCollectionEquality().equals(other.friend, friend));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(game),
      const DeepCollectionEquality().hash(friend));

  @JsonKey(ignore: true)
  @override
  _$addFriendCopyWith<_addFriend> get copyWith =>
      __$addFriendCopyWithImpl<_addFriend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game, GamifierUserPrimitive friend)
        addFriend,
  }) {
    return addFriend(game, friend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game, GamifierUserPrimitive friend)?
        addFriend,
  }) {
    return addFriend?.call(game, friend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game, GamifierUserPrimitive friend)?
        addFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(game, friend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addFriend value) addFriend,
  }) {
    return addFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_addFriend value)? addFriend,
  }) {
    return addFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addFriend value)? addFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(this);
    }
    return orElse();
  }
}

abstract class _addFriend implements GameAddingFriendEvent {
  factory _addFriend(GamePrimitive game, GamifierUserPrimitive friend) =
      _$_addFriend;

  @override
  GamePrimitive get game;
  @override
  GamifierUserPrimitive get friend;
  @override
  @JsonKey(ignore: true)
  _$addFriendCopyWith<_addFriend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GameAddingFriendStateTearOff {
  const _$GameAddingFriendStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _FriendAdded friendAdded(GamifierUserPrimitive friendAdded) {
    return _FriendAdded(
      friendAdded,
    );
  }

  _FriendAddedFailure friendAddedFailure(String friendAddedFailure) {
    return _FriendAddedFailure(
      friendAddedFailure,
    );
  }
}

/// @nodoc
const $GameAddingFriendState = _$GameAddingFriendStateTearOff();

/// @nodoc
mixin _$GameAddingFriendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GamifierUserPrimitive friendAdded) friendAdded,
    required TResult Function(String friendAddedFailure) friendAddedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_FriendAddedFailure value) friendAddedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAddingFriendStateCopyWith<$Res> {
  factory $GameAddingFriendStateCopyWith(GameAddingFriendState value,
          $Res Function(GameAddingFriendState) then) =
      _$GameAddingFriendStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameAddingFriendStateCopyWithImpl<$Res>
    implements $GameAddingFriendStateCopyWith<$Res> {
  _$GameAddingFriendStateCopyWithImpl(this._value, this._then);

  final GameAddingFriendState _value;
  // ignore: unused_field
  final $Res Function(GameAddingFriendState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$GameAddingFriendStateCopyWithImpl<$Res>
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
    return 'GameAddingFriendState.initial()';
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
    required TResult Function(GamifierUserPrimitive friendAdded) friendAdded,
    required TResult Function(String friendAddedFailure) friendAddedFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
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
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_FriendAddedFailure value) friendAddedFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameAddingFriendState {
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
    extends _$GameAddingFriendStateCopyWithImpl<$Res>
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
    return 'GameAddingFriendState.loadInProgress()';
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
    required TResult Function(GamifierUserPrimitive friendAdded) friendAdded,
    required TResult Function(String friendAddedFailure) friendAddedFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
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
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_FriendAddedFailure value) friendAddedFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements GameAddingFriendState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$FriendAddedCopyWith<$Res> {
  factory _$FriendAddedCopyWith(
          _FriendAdded value, $Res Function(_FriendAdded) then) =
      __$FriendAddedCopyWithImpl<$Res>;
  $Res call({GamifierUserPrimitive friendAdded});

  $GamifierUserPrimitiveCopyWith<$Res> get friendAdded;
}

/// @nodoc
class __$FriendAddedCopyWithImpl<$Res>
    extends _$GameAddingFriendStateCopyWithImpl<$Res>
    implements _$FriendAddedCopyWith<$Res> {
  __$FriendAddedCopyWithImpl(
      _FriendAdded _value, $Res Function(_FriendAdded) _then)
      : super(_value, (v) => _then(v as _FriendAdded));

  @override
  _FriendAdded get _value => super._value as _FriendAdded;

  @override
  $Res call({
    Object? friendAdded = freezed,
  }) {
    return _then(_FriendAdded(
      friendAdded == freezed
          ? _value.friendAdded
          : friendAdded // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get friendAdded {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.friendAdded, (value) {
      return _then(_value.copyWith(friendAdded: value));
    });
  }
}

/// @nodoc

class _$_FriendAdded implements _FriendAdded {
  const _$_FriendAdded(this.friendAdded);

  @override
  final GamifierUserPrimitive friendAdded;

  @override
  String toString() {
    return 'GameAddingFriendState.friendAdded(friendAdded: $friendAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendAdded &&
            const DeepCollectionEquality()
                .equals(other.friendAdded, friendAdded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendAdded));

  @JsonKey(ignore: true)
  @override
  _$FriendAddedCopyWith<_FriendAdded> get copyWith =>
      __$FriendAddedCopyWithImpl<_FriendAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GamifierUserPrimitive friendAdded) friendAdded,
    required TResult Function(String friendAddedFailure) friendAddedFailure,
  }) {
    return friendAdded(this.friendAdded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
  }) {
    return friendAdded?.call(this.friendAdded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
    required TResult orElse(),
  }) {
    if (friendAdded != null) {
      return friendAdded(this.friendAdded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_FriendAddedFailure value) friendAddedFailure,
  }) {
    return friendAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
  }) {
    return friendAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
    required TResult orElse(),
  }) {
    if (friendAdded != null) {
      return friendAdded(this);
    }
    return orElse();
  }
}

abstract class _FriendAdded implements GameAddingFriendState {
  const factory _FriendAdded(GamifierUserPrimitive friendAdded) =
      _$_FriendAdded;

  GamifierUserPrimitive get friendAdded;
  @JsonKey(ignore: true)
  _$FriendAddedCopyWith<_FriendAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FriendAddedFailureCopyWith<$Res> {
  factory _$FriendAddedFailureCopyWith(
          _FriendAddedFailure value, $Res Function(_FriendAddedFailure) then) =
      __$FriendAddedFailureCopyWithImpl<$Res>;
  $Res call({String friendAddedFailure});
}

/// @nodoc
class __$FriendAddedFailureCopyWithImpl<$Res>
    extends _$GameAddingFriendStateCopyWithImpl<$Res>
    implements _$FriendAddedFailureCopyWith<$Res> {
  __$FriendAddedFailureCopyWithImpl(
      _FriendAddedFailure _value, $Res Function(_FriendAddedFailure) _then)
      : super(_value, (v) => _then(v as _FriendAddedFailure));

  @override
  _FriendAddedFailure get _value => super._value as _FriendAddedFailure;

  @override
  $Res call({
    Object? friendAddedFailure = freezed,
  }) {
    return _then(_FriendAddedFailure(
      friendAddedFailure == freezed
          ? _value.friendAddedFailure
          : friendAddedFailure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FriendAddedFailure implements _FriendAddedFailure {
  const _$_FriendAddedFailure(this.friendAddedFailure);

  @override
  final String friendAddedFailure;

  @override
  String toString() {
    return 'GameAddingFriendState.friendAddedFailure(friendAddedFailure: $friendAddedFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendAddedFailure &&
            const DeepCollectionEquality()
                .equals(other.friendAddedFailure, friendAddedFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(friendAddedFailure));

  @JsonKey(ignore: true)
  @override
  _$FriendAddedFailureCopyWith<_FriendAddedFailure> get copyWith =>
      __$FriendAddedFailureCopyWithImpl<_FriendAddedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(GamifierUserPrimitive friendAdded) friendAdded,
    required TResult Function(String friendAddedFailure) friendAddedFailure,
  }) {
    return friendAddedFailure(this.friendAddedFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
  }) {
    return friendAddedFailure?.call(this.friendAddedFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(GamifierUserPrimitive friendAdded)? friendAdded,
    TResult Function(String friendAddedFailure)? friendAddedFailure,
    required TResult orElse(),
  }) {
    if (friendAddedFailure != null) {
      return friendAddedFailure(this.friendAddedFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FriendAdded value) friendAdded,
    required TResult Function(_FriendAddedFailure value) friendAddedFailure,
  }) {
    return friendAddedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
  }) {
    return friendAddedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FriendAdded value)? friendAdded,
    TResult Function(_FriendAddedFailure value)? friendAddedFailure,
    required TResult orElse(),
  }) {
    if (friendAddedFailure != null) {
      return friendAddedFailure(this);
    }
    return orElse();
  }
}

abstract class _FriendAddedFailure implements GameAddingFriendState {
  const factory _FriendAddedFailure(String friendAddedFailure) =
      _$_FriendAddedFailure;

  String get friendAddedFailure;
  @JsonKey(ignore: true)
  _$FriendAddedFailureCopyWith<_FriendAddedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
