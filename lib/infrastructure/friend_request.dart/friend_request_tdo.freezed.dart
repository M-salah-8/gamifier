// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_request_tdo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendRequestTDO _$FriendRequestTDOFromJson(Map<String, dynamic> json) {
  return _FriendRequestTDO.fromJson(json);
}

/// @nodoc
class _$FriendRequestTDOTearOff {
  const _$FriendRequestTDOTearOff();

  _FriendRequestTDO call(
      {required String id,
      required GamifierUserTDO sender,
      required GamifierUserTDO receiver,
      required String requestStatus}) {
    return _FriendRequestTDO(
      id: id,
      sender: sender,
      receiver: receiver,
      requestStatus: requestStatus,
    );
  }

  FriendRequestTDO fromJson(Map<String, Object?> json) {
    return FriendRequestTDO.fromJson(json);
  }
}

/// @nodoc
const $FriendRequestTDO = _$FriendRequestTDOTearOff();

/// @nodoc
mixin _$FriendRequestTDO {
  String get id => throw _privateConstructorUsedError;
  GamifierUserTDO get sender => throw _privateConstructorUsedError;
  GamifierUserTDO get receiver => throw _privateConstructorUsedError;
  String get requestStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestTDOCopyWith<FriendRequestTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestTDOCopyWith<$Res> {
  factory $FriendRequestTDOCopyWith(
          FriendRequestTDO value, $Res Function(FriendRequestTDO) then) =
      _$FriendRequestTDOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      GamifierUserTDO sender,
      GamifierUserTDO receiver,
      String requestStatus});

  $GamifierUserTDOCopyWith<$Res> get sender;
  $GamifierUserTDOCopyWith<$Res> get receiver;
}

/// @nodoc
class _$FriendRequestTDOCopyWithImpl<$Res>
    implements $FriendRequestTDOCopyWith<$Res> {
  _$FriendRequestTDOCopyWithImpl(this._value, this._then);

  final FriendRequestTDO _value;
  // ignore: unused_field
  final $Res Function(FriendRequestTDO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? requestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as GamifierUserTDO,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as GamifierUserTDO,
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GamifierUserTDOCopyWith<$Res> get sender {
    return $GamifierUserTDOCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $GamifierUserTDOCopyWith<$Res> get receiver {
    return $GamifierUserTDOCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$FriendRequestTDOCopyWith<$Res>
    implements $FriendRequestTDOCopyWith<$Res> {
  factory _$FriendRequestTDOCopyWith(
          _FriendRequestTDO value, $Res Function(_FriendRequestTDO) then) =
      __$FriendRequestTDOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      GamifierUserTDO sender,
      GamifierUserTDO receiver,
      String requestStatus});

  @override
  $GamifierUserTDOCopyWith<$Res> get sender;
  @override
  $GamifierUserTDOCopyWith<$Res> get receiver;
}

/// @nodoc
class __$FriendRequestTDOCopyWithImpl<$Res>
    extends _$FriendRequestTDOCopyWithImpl<$Res>
    implements _$FriendRequestTDOCopyWith<$Res> {
  __$FriendRequestTDOCopyWithImpl(
      _FriendRequestTDO _value, $Res Function(_FriendRequestTDO) _then)
      : super(_value, (v) => _then(v as _FriendRequestTDO));

  @override
  _FriendRequestTDO get _value => super._value as _FriendRequestTDO;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? requestStatus = freezed,
  }) {
    return _then(_FriendRequestTDO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as GamifierUserTDO,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as GamifierUserTDO,
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendRequestTDO extends _FriendRequestTDO {
  const _$_FriendRequestTDO(
      {required this.id,
      required this.sender,
      required this.receiver,
      required this.requestStatus})
      : super._();

  factory _$_FriendRequestTDO.fromJson(Map<String, dynamic> json) =>
      _$$_FriendRequestTDOFromJson(json);

  @override
  final String id;
  @override
  final GamifierUserTDO sender;
  @override
  final GamifierUserTDO receiver;
  @override
  final String requestStatus;

  @override
  String toString() {
    return 'FriendRequestTDO(id: $id, sender: $sender, receiver: $receiver, requestStatus: $requestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendRequestTDO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality()
                .equals(other.requestStatus, requestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver),
      const DeepCollectionEquality().hash(requestStatus));

  @JsonKey(ignore: true)
  @override
  _$FriendRequestTDOCopyWith<_FriendRequestTDO> get copyWith =>
      __$FriendRequestTDOCopyWithImpl<_FriendRequestTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendRequestTDOToJson(this);
  }
}

abstract class _FriendRequestTDO extends FriendRequestTDO {
  const factory _FriendRequestTDO(
      {required String id,
      required GamifierUserTDO sender,
      required GamifierUserTDO receiver,
      required String requestStatus}) = _$_FriendRequestTDO;
  const _FriendRequestTDO._() : super._();

  factory _FriendRequestTDO.fromJson(Map<String, dynamic> json) =
      _$_FriendRequestTDO.fromJson;

  @override
  String get id;
  @override
  GamifierUserTDO get sender;
  @override
  GamifierUserTDO get receiver;
  @override
  String get requestStatus;
  @override
  @JsonKey(ignore: true)
  _$FriendRequestTDOCopyWith<_FriendRequestTDO> get copyWith =>
      throw _privateConstructorUsedError;
}
