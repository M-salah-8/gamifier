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

  _Failure failure(String? failuer) {
    return _Failure(
      failuer,
    );
  }
}

/// @nodoc
const $FriendRequestState = _$FriendRequestStateTearOff();

/// @nodoc
mixin _$FriendRequestState {
  String? get failuer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failuer) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failuer)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failuer)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendRequestStateCopyWith<FriendRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestStateCopyWith<$Res> {
  factory $FriendRequestStateCopyWith(
          FriendRequestState value, $Res Function(FriendRequestState) then) =
      _$FriendRequestStateCopyWithImpl<$Res>;
  $Res call({String? failuer});
}

/// @nodoc
class _$FriendRequestStateCopyWithImpl<$Res>
    implements $FriendRequestStateCopyWith<$Res> {
  _$FriendRequestStateCopyWithImpl(this._value, this._then);

  final FriendRequestState _value;
  // ignore: unused_field
  final $Res Function(FriendRequestState) _then;

  @override
  $Res call({
    Object? failuer = freezed,
  }) {
    return _then(_value.copyWith(
      failuer: failuer == freezed
          ? _value.failuer
          : failuer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FailureCopyWith<$Res>
    implements $FriendRequestStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call({String? failuer});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$FriendRequestStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failuer = freezed,
  }) {
    return _then(_Failure(
      failuer == freezed
          ? _value.failuer
          : failuer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failuer);

  @override
  final String? failuer;

  @override
  String toString() {
    return 'FriendRequestState.failure(failuer: $failuer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.failuer, failuer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failuer));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failuer) failure,
  }) {
    return failure(failuer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failuer)? failure,
  }) {
    return failure?.call(failuer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failuer)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(failuer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FriendRequestState {
  const factory _Failure(String? failuer) = _$_Failure;

  @override
  String? get failuer;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
