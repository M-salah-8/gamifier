// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gamifier_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GamifierUserTearOff {
  const _$GamifierUserTearOff();

  _GamifierUser call(
      {required UniqueId id, required String name, required String email}) {
    return _GamifierUser(
      id: id,
      name: name,
      email: email,
    );
  }
}

/// @nodoc
const $GamifierUser = _$GamifierUserTearOff();

/// @nodoc
mixin _$GamifierUser {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamifierUserCopyWith<GamifierUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamifierUserCopyWith<$Res> {
  factory $GamifierUserCopyWith(
          GamifierUser value, $Res Function(GamifierUser) then) =
      _$GamifierUserCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, String email});
}

/// @nodoc
class _$GamifierUserCopyWithImpl<$Res> implements $GamifierUserCopyWith<$Res> {
  _$GamifierUserCopyWithImpl(this._value, this._then);

  final GamifierUser _value;
  // ignore: unused_field
  final $Res Function(GamifierUser) _then;

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
              as UniqueId,
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
abstract class _$GamifierUserCopyWith<$Res>
    implements $GamifierUserCopyWith<$Res> {
  factory _$GamifierUserCopyWith(
          _GamifierUser value, $Res Function(_GamifierUser) then) =
      __$GamifierUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, String email});
}

/// @nodoc
class __$GamifierUserCopyWithImpl<$Res> extends _$GamifierUserCopyWithImpl<$Res>
    implements _$GamifierUserCopyWith<$Res> {
  __$GamifierUserCopyWithImpl(
      _GamifierUser _value, $Res Function(_GamifierUser) _then)
      : super(_value, (v) => _then(v as _GamifierUser));

  @override
  _GamifierUser get _value => super._value as _GamifierUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_GamifierUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$_GamifierUser implements _GamifierUser {
  const _$_GamifierUser(
      {required this.id, required this.name, required this.email});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'GamifierUser(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamifierUser &&
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
  _$GamifierUserCopyWith<_GamifierUser> get copyWith =>
      __$GamifierUserCopyWithImpl<_GamifierUser>(this, _$identity);
}

abstract class _GamifierUser implements GamifierUser {
  const factory _GamifierUser(
      {required UniqueId id,
      required String name,
      required String email}) = _$_GamifierUser;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$GamifierUserCopyWith<_GamifierUser> get copyWith =>
      throw _privateConstructorUsedError;
}
