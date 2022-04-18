// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gamifier_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GamifierUserTDO _$GamifierUserTDOFromJson(Map<String, dynamic> json) {
  return _GamifierUserTDO.fromJson(json);
}

/// @nodoc
class _$GamifierUserTDOTearOff {
  const _$GamifierUserTDOTearOff();

  _GamifierUserTDO call(
      {required String id, required String name, required String email}) {
    return _GamifierUserTDO(
      id: id,
      name: name,
      email: email,
    );
  }

  GamifierUserTDO fromJson(Map<String, Object?> json) {
    return GamifierUserTDO.fromJson(json);
  }
}

/// @nodoc
const $GamifierUserTDO = _$GamifierUserTDOTearOff();

/// @nodoc
mixin _$GamifierUserTDO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamifierUserTDOCopyWith<GamifierUserTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamifierUserTDOCopyWith<$Res> {
  factory $GamifierUserTDOCopyWith(
          GamifierUserTDO value, $Res Function(GamifierUserTDO) then) =
      _$GamifierUserTDOCopyWithImpl<$Res>;
  $Res call({String id, String name, String email});
}

/// @nodoc
class _$GamifierUserTDOCopyWithImpl<$Res>
    implements $GamifierUserTDOCopyWith<$Res> {
  _$GamifierUserTDOCopyWithImpl(this._value, this._then);

  final GamifierUserTDO _value;
  // ignore: unused_field
  final $Res Function(GamifierUserTDO) _then;

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
abstract class _$GamifierUserTDOCopyWith<$Res>
    implements $GamifierUserTDOCopyWith<$Res> {
  factory _$GamifierUserTDOCopyWith(
          _GamifierUserTDO value, $Res Function(_GamifierUserTDO) then) =
      __$GamifierUserTDOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String email});
}

/// @nodoc
class __$GamifierUserTDOCopyWithImpl<$Res>
    extends _$GamifierUserTDOCopyWithImpl<$Res>
    implements _$GamifierUserTDOCopyWith<$Res> {
  __$GamifierUserTDOCopyWithImpl(
      _GamifierUserTDO _value, $Res Function(_GamifierUserTDO) _then)
      : super(_value, (v) => _then(v as _GamifierUserTDO));

  @override
  _GamifierUserTDO get _value => super._value as _GamifierUserTDO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_GamifierUserTDO(
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
@JsonSerializable()
class _$_GamifierUserTDO extends _GamifierUserTDO {
  const _$_GamifierUserTDO(
      {required this.id, required this.name, required this.email})
      : super._();

  factory _$_GamifierUserTDO.fromJson(Map<String, dynamic> json) =>
      _$$_GamifierUserTDOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'GamifierUserTDO(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamifierUserTDO &&
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
  _$GamifierUserTDOCopyWith<_GamifierUserTDO> get copyWith =>
      __$GamifierUserTDOCopyWithImpl<_GamifierUserTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamifierUserTDOToJson(this);
  }
}

abstract class _GamifierUserTDO extends GamifierUserTDO {
  const factory _GamifierUserTDO(
      {required String id,
      required String name,
      required String email}) = _$_GamifierUserTDO;
  const _GamifierUserTDO._() : super._();

  factory _GamifierUserTDO.fromJson(Map<String, dynamic> json) =
      _$_GamifierUserTDO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$GamifierUserTDOCopyWith<_GamifierUserTDO> get copyWith =>
      throw _privateConstructorUsedError;
}
