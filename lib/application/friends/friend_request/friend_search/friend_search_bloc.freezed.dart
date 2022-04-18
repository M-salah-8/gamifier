// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendSearchEventTearOff {
  const _$FriendSearchEventTearOff();

  _Initialed initialed() {
    return const _Initialed();
  }

  _EmailSearched emailSearched(String email) {
    return _EmailSearched(
      email,
    );
  }
}

/// @nodoc
const $FriendSearchEvent = _$FriendSearchEventTearOff();

/// @nodoc
mixin _$FriendSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialed,
    required TResult Function(String email) emailSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialed,
    TResult Function(String email)? emailSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialed,
    TResult Function(String email)? emailSearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialed value) initialed,
    required TResult Function(_EmailSearched value) emailSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialed value)? initialed,
    TResult Function(_EmailSearched value)? emailSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialed value)? initialed,
    TResult Function(_EmailSearched value)? emailSearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendSearchEventCopyWith<$Res> {
  factory $FriendSearchEventCopyWith(
          FriendSearchEvent value, $Res Function(FriendSearchEvent) then) =
      _$FriendSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendSearchEventCopyWithImpl<$Res>
    implements $FriendSearchEventCopyWith<$Res> {
  _$FriendSearchEventCopyWithImpl(this._value, this._then);

  final FriendSearchEvent _value;
  // ignore: unused_field
  final $Res Function(FriendSearchEvent) _then;
}

/// @nodoc
abstract class _$InitialedCopyWith<$Res> {
  factory _$InitialedCopyWith(
          _Initialed value, $Res Function(_Initialed) then) =
      __$InitialedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialedCopyWithImpl<$Res>
    extends _$FriendSearchEventCopyWithImpl<$Res>
    implements _$InitialedCopyWith<$Res> {
  __$InitialedCopyWithImpl(_Initialed _value, $Res Function(_Initialed) _then)
      : super(_value, (v) => _then(v as _Initialed));

  @override
  _Initialed get _value => super._value as _Initialed;
}

/// @nodoc

class _$_Initialed implements _Initialed {
  const _$_Initialed();

  @override
  String toString() {
    return 'FriendSearchEvent.initialed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialed,
    required TResult Function(String email) emailSearched,
  }) {
    return initialed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialed,
    TResult Function(String email)? emailSearched,
  }) {
    return initialed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialed,
    TResult Function(String email)? emailSearched,
    required TResult orElse(),
  }) {
    if (initialed != null) {
      return initialed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialed value) initialed,
    required TResult Function(_EmailSearched value) emailSearched,
  }) {
    return initialed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialed value)? initialed,
    TResult Function(_EmailSearched value)? emailSearched,
  }) {
    return initialed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialed value)? initialed,
    TResult Function(_EmailSearched value)? emailSearched,
    required TResult orElse(),
  }) {
    if (initialed != null) {
      return initialed(this);
    }
    return orElse();
  }
}

abstract class _Initialed implements FriendSearchEvent {
  const factory _Initialed() = _$_Initialed;
}

/// @nodoc
abstract class _$EmailSearchedCopyWith<$Res> {
  factory _$EmailSearchedCopyWith(
          _EmailSearched value, $Res Function(_EmailSearched) then) =
      __$EmailSearchedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailSearchedCopyWithImpl<$Res>
    extends _$FriendSearchEventCopyWithImpl<$Res>
    implements _$EmailSearchedCopyWith<$Res> {
  __$EmailSearchedCopyWithImpl(
      _EmailSearched _value, $Res Function(_EmailSearched) _then)
      : super(_value, (v) => _then(v as _EmailSearched));

  @override
  _EmailSearched get _value => super._value as _EmailSearched;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailSearched(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailSearched implements _EmailSearched {
  const _$_EmailSearched(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'FriendSearchEvent.emailSearched(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailSearched &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailSearchedCopyWith<_EmailSearched> get copyWith =>
      __$EmailSearchedCopyWithImpl<_EmailSearched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialed,
    required TResult Function(String email) emailSearched,
  }) {
    return emailSearched(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialed,
    TResult Function(String email)? emailSearched,
  }) {
    return emailSearched?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialed,
    TResult Function(String email)? emailSearched,
    required TResult orElse(),
  }) {
    if (emailSearched != null) {
      return emailSearched(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialed value) initialed,
    required TResult Function(_EmailSearched value) emailSearched,
  }) {
    return emailSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialed value)? initialed,
    TResult Function(_EmailSearched value)? emailSearched,
  }) {
    return emailSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialed value)? initialed,
    TResult Function(_EmailSearched value)? emailSearched,
    required TResult orElse(),
  }) {
    if (emailSearched != null) {
      return emailSearched(this);
    }
    return orElse();
  }
}

abstract class _EmailSearched implements FriendSearchEvent {
  const factory _EmailSearched(String email) = _$_EmailSearched;

  String get email;
  @JsonKey(ignore: true)
  _$EmailSearchedCopyWith<_EmailSearched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendSearchStateTearOff {
  const _$FriendSearchStateTearOff();

  _initial initial() {
    return const _initial();
  }

  _Loaded loaded() {
    return const _Loaded();
  }

  _Received received(GamifierUserPrimitive gamifierUser) {
    return _Received(
      gamifierUser,
    );
  }

  _Failed failed(String failer) {
    return _Failed(
      failer,
    );
  }
}

/// @nodoc
const $FriendSearchState = _$FriendSearchStateTearOff();

/// @nodoc
mixin _$FriendSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(GamifierUserPrimitive gamifierUser) received,
    required TResult Function(String failer) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Received value) received,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendSearchStateCopyWith<$Res> {
  factory $FriendSearchStateCopyWith(
          FriendSearchState value, $Res Function(FriendSearchState) then) =
      _$FriendSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendSearchStateCopyWithImpl<$Res>
    implements $FriendSearchStateCopyWith<$Res> {
  _$FriendSearchStateCopyWithImpl(this._value, this._then);

  final FriendSearchState _value;
  // ignore: unused_field
  final $Res Function(FriendSearchState) _then;
}

/// @nodoc
abstract class _$initialCopyWith<$Res> {
  factory _$initialCopyWith(_initial value, $Res Function(_initial) then) =
      __$initialCopyWithImpl<$Res>;
}

/// @nodoc
class __$initialCopyWithImpl<$Res> extends _$FriendSearchStateCopyWithImpl<$Res>
    implements _$initialCopyWith<$Res> {
  __$initialCopyWithImpl(_initial _value, $Res Function(_initial) _then)
      : super(_value, (v) => _then(v as _initial));

  @override
  _initial get _value => super._value as _initial;
}

/// @nodoc

class _$_initial implements _initial {
  const _$_initial();

  @override
  String toString() {
    return 'FriendSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(GamifierUserPrimitive gamifierUser) received,
    required TResult Function(String failer) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
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
    required TResult Function(_initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Received value) received,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial implements FriendSearchState {
  const factory _initial() = _$_initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$FriendSearchStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'FriendSearchState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(GamifierUserPrimitive gamifierUser) received,
    required TResult Function(String failer) failed,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Received value) received,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FriendSearchState {
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call({GamifierUserPrimitive gamifierUser});

  $GamifierUserPrimitiveCopyWith<$Res> get gamifierUser;
}

/// @nodoc
class __$ReceivedCopyWithImpl<$Res>
    extends _$FriendSearchStateCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object? gamifierUser = freezed,
  }) {
    return _then(_Received(
      gamifierUser == freezed
          ? _value.gamifierUser
          : gamifierUser // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get gamifierUser {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.gamifierUser, (value) {
      return _then(_value.copyWith(gamifierUser: value));
    });
  }
}

/// @nodoc

class _$_Received implements _Received {
  const _$_Received(this.gamifierUser);

  @override
  final GamifierUserPrimitive gamifierUser;

  @override
  String toString() {
    return 'FriendSearchState.received(gamifierUser: $gamifierUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Received &&
            const DeepCollectionEquality()
                .equals(other.gamifierUser, gamifierUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(gamifierUser));

  @JsonKey(ignore: true)
  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(GamifierUserPrimitive gamifierUser) received,
    required TResult Function(String failer) failed,
  }) {
    return received(gamifierUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
  }) {
    return received?.call(gamifierUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(gamifierUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Received value) received,
    required TResult Function(_Failed value) failed,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements FriendSearchState {
  const factory _Received(GamifierUserPrimitive gamifierUser) = _$_Received;

  GamifierUserPrimitive get gamifierUser;
  @JsonKey(ignore: true)
  _$ReceivedCopyWith<_Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String failer});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$FriendSearchStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? failer = freezed,
  }) {
    return _then(_Failed(
      failer == freezed
          ? _value.failer
          : failer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failer);

  @override
  final String failer;

  @override
  String toString() {
    return 'FriendSearchState.failed(failer: $failer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.failer, failer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failer));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(GamifierUserPrimitive gamifierUser) received,
    required TResult Function(String failer) failed,
  }) {
    return failed(failer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
  }) {
    return failed?.call(failer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(GamifierUserPrimitive gamifierUser)? received,
    TResult Function(String failer)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Received value) received,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Received value)? received,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements FriendSearchState {
  const factory _Failed(String failer) = _$_Failed;

  String get failer;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
