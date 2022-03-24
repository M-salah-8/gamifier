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
class _$gamifierUserTearOff {
  const _$gamifierUserTearOff();

  _gamifierUser call(UniqueId? id) {
    return _gamifierUser(
      id,
    );
  }
}

/// @nodoc
const $gamifierUser = _$gamifierUserTearOff();

/// @nodoc
mixin _$gamifierUser {
  UniqueId? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $gamifierUserCopyWith<gamifierUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $gamifierUserCopyWith<$Res> {
  factory $gamifierUserCopyWith(
          gamifierUser value, $Res Function(gamifierUser) then) =
      _$gamifierUserCopyWithImpl<$Res>;
  $Res call({UniqueId? id});
}

/// @nodoc
class _$gamifierUserCopyWithImpl<$Res> implements $gamifierUserCopyWith<$Res> {
  _$gamifierUserCopyWithImpl(this._value, this._then);

  final gamifierUser _value;
  // ignore: unused_field
  final $Res Function(gamifierUser) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc
abstract class _$gamifierUserCopyWith<$Res>
    implements $gamifierUserCopyWith<$Res> {
  factory _$gamifierUserCopyWith(
          _gamifierUser value, $Res Function(_gamifierUser) then) =
      __$gamifierUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id});
}

/// @nodoc
class __$gamifierUserCopyWithImpl<$Res> extends _$gamifierUserCopyWithImpl<$Res>
    implements _$gamifierUserCopyWith<$Res> {
  __$gamifierUserCopyWithImpl(
      _gamifierUser _value, $Res Function(_gamifierUser) _then)
      : super(_value, (v) => _then(v as _gamifierUser));

  @override
  _gamifierUser get _value => super._value as _gamifierUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_gamifierUser(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$_gamifierUser implements _gamifierUser {
  const _$_gamifierUser(this.id);

  @override
  final UniqueId? id;

  @override
  String toString() {
    return 'gamifierUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _gamifierUser &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$gamifierUserCopyWith<_gamifierUser> get copyWith =>
      __$gamifierUserCopyWithImpl<_gamifierUser>(this, _$identity);
}

abstract class _gamifierUser implements gamifierUser {
  const factory _gamifierUser(UniqueId? id) = _$_gamifierUser;

  @override
  UniqueId? get id;
  @override
  @JsonKey(ignore: true)
  _$gamifierUserCopyWith<_gamifierUser> get copyWith =>
      throw _privateConstructorUsedError;
}
