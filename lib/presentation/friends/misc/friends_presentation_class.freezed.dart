// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friends_presentation_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendRequestPrimitiveTearOff {
  const _$FriendRequestPrimitiveTearOff();

  _FriendRequestPrimitive call(
      {required String id,
      required GamifierUserPrimitive sender,
      required GamifierUserPrimitive receiver,
      required String requestStatus}) {
    return _FriendRequestPrimitive(
      id: id,
      sender: sender,
      receiver: receiver,
      requestStatus: requestStatus,
    );
  }
}

/// @nodoc
const $FriendRequestPrimitive = _$FriendRequestPrimitiveTearOff();

/// @nodoc
mixin _$FriendRequestPrimitive {
  String get id => throw _privateConstructorUsedError;
  GamifierUserPrimitive get sender => throw _privateConstructorUsedError;
  GamifierUserPrimitive get receiver => throw _privateConstructorUsedError;
  String get requestStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendRequestPrimitiveCopyWith<FriendRequestPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestPrimitiveCopyWith<$Res> {
  factory $FriendRequestPrimitiveCopyWith(FriendRequestPrimitive value,
          $Res Function(FriendRequestPrimitive) then) =
      _$FriendRequestPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {String id,
      GamifierUserPrimitive sender,
      GamifierUserPrimitive receiver,
      String requestStatus});

  $GamifierUserPrimitiveCopyWith<$Res> get sender;
  $GamifierUserPrimitiveCopyWith<$Res> get receiver;
}

/// @nodoc
class _$FriendRequestPrimitiveCopyWithImpl<$Res>
    implements $FriendRequestPrimitiveCopyWith<$Res> {
  _$FriendRequestPrimitiveCopyWithImpl(this._value, this._then);

  final FriendRequestPrimitive _value;
  // ignore: unused_field
  final $Res Function(FriendRequestPrimitive) _then;

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
              as GamifierUserPrimitive,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get sender {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get receiver {
    return $GamifierUserPrimitiveCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$FriendRequestPrimitiveCopyWith<$Res>
    implements $FriendRequestPrimitiveCopyWith<$Res> {
  factory _$FriendRequestPrimitiveCopyWith(_FriendRequestPrimitive value,
          $Res Function(_FriendRequestPrimitive) then) =
      __$FriendRequestPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      GamifierUserPrimitive sender,
      GamifierUserPrimitive receiver,
      String requestStatus});

  @override
  $GamifierUserPrimitiveCopyWith<$Res> get sender;
  @override
  $GamifierUserPrimitiveCopyWith<$Res> get receiver;
}

/// @nodoc
class __$FriendRequestPrimitiveCopyWithImpl<$Res>
    extends _$FriendRequestPrimitiveCopyWithImpl<$Res>
    implements _$FriendRequestPrimitiveCopyWith<$Res> {
  __$FriendRequestPrimitiveCopyWithImpl(_FriendRequestPrimitive _value,
      $Res Function(_FriendRequestPrimitive) _then)
      : super(_value, (v) => _then(v as _FriendRequestPrimitive));

  @override
  _FriendRequestPrimitive get _value => super._value as _FriendRequestPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? requestStatus = freezed,
  }) {
    return _then(_FriendRequestPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as GamifierUserPrimitive,
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FriendRequestPrimitive extends _FriendRequestPrimitive {
  const _$_FriendRequestPrimitive(
      {required this.id,
      required this.sender,
      required this.receiver,
      required this.requestStatus})
      : super._();

  @override
  final String id;
  @override
  final GamifierUserPrimitive sender;
  @override
  final GamifierUserPrimitive receiver;
  @override
  final String requestStatus;

  @override
  String toString() {
    return 'FriendRequestPrimitive(id: $id, sender: $sender, receiver: $receiver, requestStatus: $requestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendRequestPrimitive &&
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
  _$FriendRequestPrimitiveCopyWith<_FriendRequestPrimitive> get copyWith =>
      __$FriendRequestPrimitiveCopyWithImpl<_FriendRequestPrimitive>(
          this, _$identity);
}

abstract class _FriendRequestPrimitive extends FriendRequestPrimitive {
  const factory _FriendRequestPrimitive(
      {required String id,
      required GamifierUserPrimitive sender,
      required GamifierUserPrimitive receiver,
      required String requestStatus}) = _$_FriendRequestPrimitive;
  const _FriendRequestPrimitive._() : super._();

  @override
  String get id;
  @override
  GamifierUserPrimitive get sender;
  @override
  GamifierUserPrimitive get receiver;
  @override
  String get requestStatus;
  @override
  @JsonKey(ignore: true)
  _$FriendRequestPrimitiveCopyWith<_FriendRequestPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GamifierUserPrimitiveTearOff {
  const _$GamifierUserPrimitiveTearOff();

  _GamifierUserPrimitive call(
      {required String id, required String name, required String email}) {
    return _GamifierUserPrimitive(
      id: id,
      name: name,
      email: email,
    );
  }
}

/// @nodoc
const $GamifierUserPrimitive = _$GamifierUserPrimitiveTearOff();

/// @nodoc
mixin _$GamifierUserPrimitive {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamifierUserPrimitiveCopyWith<GamifierUserPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamifierUserPrimitiveCopyWith<$Res> {
  factory $GamifierUserPrimitiveCopyWith(GamifierUserPrimitive value,
          $Res Function(GamifierUserPrimitive) then) =
      _$GamifierUserPrimitiveCopyWithImpl<$Res>;
  $Res call({String id, String name, String email});
}

/// @nodoc
class _$GamifierUserPrimitiveCopyWithImpl<$Res>
    implements $GamifierUserPrimitiveCopyWith<$Res> {
  _$GamifierUserPrimitiveCopyWithImpl(this._value, this._then);

  final GamifierUserPrimitive _value;
  // ignore: unused_field
  final $Res Function(GamifierUserPrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GamifierUserPrimitiveCopyWith<$Res>
    implements $GamifierUserPrimitiveCopyWith<$Res> {
  factory _$GamifierUserPrimitiveCopyWith(_GamifierUserPrimitive value,
          $Res Function(_GamifierUserPrimitive) then) =
      __$GamifierUserPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String email});
}

/// @nodoc
class __$GamifierUserPrimitiveCopyWithImpl<$Res>
    extends _$GamifierUserPrimitiveCopyWithImpl<$Res>
    implements _$GamifierUserPrimitiveCopyWith<$Res> {
  __$GamifierUserPrimitiveCopyWithImpl(_GamifierUserPrimitive _value,
      $Res Function(_GamifierUserPrimitive) _then)
      : super(_value, (v) => _then(v as _GamifierUserPrimitive));

  @override
  _GamifierUserPrimitive get _value => super._value as _GamifierUserPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_GamifierUserPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GamifierUserPrimitive extends _GamifierUserPrimitive {
  const _$_GamifierUserPrimitive(
      {required this.id, required this.name, required this.email})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'GamifierUserPrimitive(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamifierUserPrimitive &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$GamifierUserPrimitiveCopyWith<_GamifierUserPrimitive> get copyWith =>
      __$GamifierUserPrimitiveCopyWithImpl<_GamifierUserPrimitive>(
          this, _$identity);
}

abstract class _GamifierUserPrimitive extends GamifierUserPrimitive {
  const factory _GamifierUserPrimitive(
      {required String id,
      required String name,
      required String email}) = _$_GamifierUserPrimitive;
  const _GamifierUserPrimitive._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$GamifierUserPrimitiveCopyWith<_GamifierUserPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
