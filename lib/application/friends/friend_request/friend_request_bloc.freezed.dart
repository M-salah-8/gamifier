// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendRequestEventTearOff {
  const _$FriendRequestEventTearOff();

  _CurrentUser currentUser(GamifierUserPrimitive currentUser) {
    return _CurrentUser(
      currentUser,
    );
  }

  _RequestSended requestSended(GamifierUserPrimitive receiver) {
    return _RequestSended(
      receiver,
    );
  }

  _RequestAccepted requestAccepted(String requestid) {
    return _RequestAccepted(
      requestid,
    );
  }

  _RequestCancelled requestCancelled(String requestid) {
    return _RequestCancelled(
      requestid,
    );
  }
}

/// @nodoc
const $FriendRequestEvent = _$FriendRequestEventTearOff();

/// @nodoc
mixin _$FriendRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(GamifierUserPrimitive receiver) requestSended,
    required TResult Function(String requestid) requestAccepted,
    required TResult Function(String requestid) requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_RequestSended value) requestSended,
    required TResult Function(_RequestAccepted value) requestAccepted,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestEventCopyWith<$Res> {
  factory $FriendRequestEventCopyWith(
          FriendRequestEvent value, $Res Function(FriendRequestEvent) then) =
      _$FriendRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendRequestEventCopyWithImpl<$Res>
    implements $FriendRequestEventCopyWith<$Res> {
  _$FriendRequestEventCopyWithImpl(this._value, this._then);

  final FriendRequestEvent _value;
  // ignore: unused_field
  final $Res Function(FriendRequestEvent) _then;
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
    extends _$FriendRequestEventCopyWithImpl<$Res>
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
    return 'FriendRequestEvent.currentUser(currentUser: $currentUser)';
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
    required TResult Function(GamifierUserPrimitive receiver) requestSended,
    required TResult Function(String requestid) requestAccepted,
    required TResult Function(String requestid) requestCancelled,
  }) {
    return currentUser(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
  }) {
    return currentUser?.call(this.currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
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
    required TResult Function(_RequestSended value) requestSended,
    required TResult Function(_RequestAccepted value) requestAccepted,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
  }) {
    return currentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class _CurrentUser implements FriendRequestEvent {
  factory _CurrentUser(GamifierUserPrimitive currentUser) = _$_CurrentUser;

  GamifierUserPrimitive get currentUser;
  @JsonKey(ignore: true)
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestSendedCopyWith<$Res> {
  factory _$RequestSendedCopyWith(
          _RequestSended value, $Res Function(_RequestSended) then) =
      __$RequestSendedCopyWithImpl<$Res>;
  $Res call({GamifierUserPrimitive receiver});

  $GamifierUserPrimitiveCopyWith<$Res> get receiver;
}

/// @nodoc
class __$RequestSendedCopyWithImpl<$Res>
    extends _$FriendRequestEventCopyWithImpl<$Res>
    implements _$RequestSendedCopyWith<$Res> {
  __$RequestSendedCopyWithImpl(
      _RequestSended _value, $Res Function(_RequestSended) _then)
      : super(_value, (v) => _then(v as _RequestSended));

  @override
  _RequestSended get _value => super._value as _RequestSended;

  @override
  $Res call({
    Object? receiver = freezed,
  }) {
    return _then(_RequestSended(
      receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
    ));
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get receiver {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc

class _$_RequestSended implements _RequestSended {
  const _$_RequestSended(this.receiver);

  @override
  final GamifierUserPrimitive receiver;

  @override
  String toString() {
    return 'FriendRequestEvent.requestSended(receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestSended &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  _$RequestSendedCopyWith<_RequestSended> get copyWith =>
      __$RequestSendedCopyWithImpl<_RequestSended>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(GamifierUserPrimitive receiver) requestSended,
    required TResult Function(String requestid) requestAccepted,
    required TResult Function(String requestid) requestCancelled,
  }) {
    return requestSended(receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
  }) {
    return requestSended?.call(receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestSended != null) {
      return requestSended(receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_RequestSended value) requestSended,
    required TResult Function(_RequestAccepted value) requestAccepted,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return requestSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
  }) {
    return requestSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestSended != null) {
      return requestSended(this);
    }
    return orElse();
  }
}

abstract class _RequestSended implements FriendRequestEvent {
  const factory _RequestSended(GamifierUserPrimitive receiver) =
      _$_RequestSended;

  GamifierUserPrimitive get receiver;
  @JsonKey(ignore: true)
  _$RequestSendedCopyWith<_RequestSended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestAcceptedCopyWith<$Res> {
  factory _$RequestAcceptedCopyWith(
          _RequestAccepted value, $Res Function(_RequestAccepted) then) =
      __$RequestAcceptedCopyWithImpl<$Res>;
  $Res call({String requestid});
}

/// @nodoc
class __$RequestAcceptedCopyWithImpl<$Res>
    extends _$FriendRequestEventCopyWithImpl<$Res>
    implements _$RequestAcceptedCopyWith<$Res> {
  __$RequestAcceptedCopyWithImpl(
      _RequestAccepted _value, $Res Function(_RequestAccepted) _then)
      : super(_value, (v) => _then(v as _RequestAccepted));

  @override
  _RequestAccepted get _value => super._value as _RequestAccepted;

  @override
  $Res call({
    Object? requestid = freezed,
  }) {
    return _then(_RequestAccepted(
      requestid == freezed
          ? _value.requestid
          : requestid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestAccepted implements _RequestAccepted {
  const _$_RequestAccepted(this.requestid);

  @override
  final String requestid;

  @override
  String toString() {
    return 'FriendRequestEvent.requestAccepted(requestid: $requestid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestAccepted &&
            const DeepCollectionEquality().equals(other.requestid, requestid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(requestid));

  @JsonKey(ignore: true)
  @override
  _$RequestAcceptedCopyWith<_RequestAccepted> get copyWith =>
      __$RequestAcceptedCopyWithImpl<_RequestAccepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(GamifierUserPrimitive receiver) requestSended,
    required TResult Function(String requestid) requestAccepted,
    required TResult Function(String requestid) requestCancelled,
  }) {
    return requestAccepted(requestid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
  }) {
    return requestAccepted?.call(requestid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestAccepted != null) {
      return requestAccepted(requestid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_RequestSended value) requestSended,
    required TResult Function(_RequestAccepted value) requestAccepted,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return requestAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
  }) {
    return requestAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestAccepted != null) {
      return requestAccepted(this);
    }
    return orElse();
  }
}

abstract class _RequestAccepted implements FriendRequestEvent {
  const factory _RequestAccepted(String requestid) = _$_RequestAccepted;

  String get requestid;
  @JsonKey(ignore: true)
  _$RequestAcceptedCopyWith<_RequestAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestCancelledCopyWith<$Res> {
  factory _$RequestCancelledCopyWith(
          _RequestCancelled value, $Res Function(_RequestCancelled) then) =
      __$RequestCancelledCopyWithImpl<$Res>;
  $Res call({String requestid});
}

/// @nodoc
class __$RequestCancelledCopyWithImpl<$Res>
    extends _$FriendRequestEventCopyWithImpl<$Res>
    implements _$RequestCancelledCopyWith<$Res> {
  __$RequestCancelledCopyWithImpl(
      _RequestCancelled _value, $Res Function(_RequestCancelled) _then)
      : super(_value, (v) => _then(v as _RequestCancelled));

  @override
  _RequestCancelled get _value => super._value as _RequestCancelled;

  @override
  $Res call({
    Object? requestid = freezed,
  }) {
    return _then(_RequestCancelled(
      requestid == freezed
          ? _value.requestid
          : requestid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestCancelled implements _RequestCancelled {
  const _$_RequestCancelled(this.requestid);

  @override
  final String requestid;

  @override
  String toString() {
    return 'FriendRequestEvent.requestCancelled(requestid: $requestid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestCancelled &&
            const DeepCollectionEquality().equals(other.requestid, requestid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(requestid));

  @JsonKey(ignore: true)
  @override
  _$RequestCancelledCopyWith<_RequestCancelled> get copyWith =>
      __$RequestCancelledCopyWithImpl<_RequestCancelled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamifierUserPrimitive currentUser) currentUser,
    required TResult Function(GamifierUserPrimitive receiver) requestSended,
    required TResult Function(String requestid) requestAccepted,
    required TResult Function(String requestid) requestCancelled,
  }) {
    return requestCancelled(requestid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
  }) {
    return requestCancelled?.call(requestid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamifierUserPrimitive currentUser)? currentUser,
    TResult Function(GamifierUserPrimitive receiver)? requestSended,
    TResult Function(String requestid)? requestAccepted,
    TResult Function(String requestid)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(requestid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentUser value) currentUser,
    required TResult Function(_RequestSended value) requestSended,
    required TResult Function(_RequestAccepted value) requestAccepted,
    required TResult Function(_RequestCancelled value) requestCancelled,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentUser value)? currentUser,
    TResult Function(_RequestSended value)? requestSended,
    TResult Function(_RequestAccepted value)? requestAccepted,
    TResult Function(_RequestCancelled value)? requestCancelled,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class _RequestCancelled implements FriendRequestEvent {
  const factory _RequestCancelled(String requestid) = _$_RequestCancelled;

  String get requestid;
  @JsonKey(ignore: true)
  _$RequestCancelledCopyWith<_RequestCancelled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FriendRequestStateTearOff {
  const _$FriendRequestStateTearOff();

  _initial initial() {
    return const _initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _FailureOrSuccess failureOrSuccess(String failuerOrSuccess) {
    return _FailureOrSuccess(
      failuerOrSuccess,
    );
  }
}

/// @nodoc
const $FriendRequestState = _$FriendRequestStateTearOff();

/// @nodoc
mixin _$FriendRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String failuerOrSuccess) failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestStateCopyWith<$Res> {
  factory $FriendRequestStateCopyWith(
          FriendRequestState value, $Res Function(FriendRequestState) then) =
      _$FriendRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FriendRequestStateCopyWithImpl<$Res>
    implements $FriendRequestStateCopyWith<$Res> {
  _$FriendRequestStateCopyWithImpl(this._value, this._then);

  final FriendRequestState _value;
  // ignore: unused_field
  final $Res Function(FriendRequestState) _then;
}

/// @nodoc
abstract class _$initialCopyWith<$Res> {
  factory _$initialCopyWith(_initial value, $Res Function(_initial) then) =
      __$initialCopyWithImpl<$Res>;
}

/// @nodoc
class __$initialCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
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
    return 'FriendRequestState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(String failuerOrSuccess) failureOrSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial implements FriendRequestState {
  const factory _initial() = _$_initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
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
    return 'FriendRequestState.loadInProgress()';
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
    required TResult Function(String failuerOrSuccess) failureOrSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
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
    required TResult Function(_initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements FriendRequestState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$FailureOrSuccessCopyWith<$Res> {
  factory _$FailureOrSuccessCopyWith(
          _FailureOrSuccess value, $Res Function(_FailureOrSuccess) then) =
      __$FailureOrSuccessCopyWithImpl<$Res>;
  $Res call({String failuerOrSuccess});
}

/// @nodoc
class __$FailureOrSuccessCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
    implements _$FailureOrSuccessCopyWith<$Res> {
  __$FailureOrSuccessCopyWithImpl(
      _FailureOrSuccess _value, $Res Function(_FailureOrSuccess) _then)
      : super(_value, (v) => _then(v as _FailureOrSuccess));

  @override
  _FailureOrSuccess get _value => super._value as _FailureOrSuccess;

  @override
  $Res call({
    Object? failuerOrSuccess = freezed,
  }) {
    return _then(_FailureOrSuccess(
      failuerOrSuccess == freezed
          ? _value.failuerOrSuccess
          : failuerOrSuccess // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureOrSuccess implements _FailureOrSuccess {
  const _$_FailureOrSuccess(this.failuerOrSuccess);

  @override
  final String failuerOrSuccess;

  @override
  String toString() {
    return 'FriendRequestState.failureOrSuccess(failuerOrSuccess: $failuerOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureOrSuccess &&
            const DeepCollectionEquality()
                .equals(other.failuerOrSuccess, failuerOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failuerOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$FailureOrSuccessCopyWith<_FailureOrSuccess> get copyWith =>
      __$FailureOrSuccessCopyWithImpl<_FailureOrSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String failuerOrSuccess) failureOrSuccess,
  }) {
    return failureOrSuccess(failuerOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
  }) {
    return failureOrSuccess?.call(failuerOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String failuerOrSuccess)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (failureOrSuccess != null) {
      return failureOrSuccess(failuerOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_FailureOrSuccess value) failureOrSuccess,
  }) {
    return failureOrSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
  }) {
    return failureOrSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_FailureOrSuccess value)? failureOrSuccess,
    required TResult orElse(),
  }) {
    if (failureOrSuccess != null) {
      return failureOrSuccess(this);
    }
    return orElse();
  }
}

abstract class _FailureOrSuccess implements FriendRequestState {
  const factory _FailureOrSuccess(String failuerOrSuccess) =
      _$_FailureOrSuccess;

  String get failuerOrSuccess;
  @JsonKey(ignore: true)
  _$FailureOrSuccessCopyWith<_FailureOrSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
