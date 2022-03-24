// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailuerTearOff {
  const _$ValueFailuerTearOff();

  _InvalidEmail<T> invalidEmail<T>(T email) {
    return _InvalidEmail<T>(
      email,
    );
  }

  _ShortPassword<T> shortPassword<T>(T password) {
    return _ShortPassword<T>(
      password,
    );
  }
}

/// @nodoc
const $ValueFailuer = _$ValueFailuerTearOff();

/// @nodoc
mixin _$ValueFailuer<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T email) invalidEmail,
    required TResult Function(T password) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T email)? invalidEmail,
    TResult Function(T password)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T email)? invalidEmail,
    TResult Function(T password)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailuerCopyWith<T, $Res> {
  factory $ValueFailuerCopyWith(
          ValueFailuer<T> value, $Res Function(ValueFailuer<T>) then) =
      _$ValueFailuerCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailuerCopyWithImpl<T, $Res>
    implements $ValueFailuerCopyWith<T, $Res> {
  _$ValueFailuerCopyWithImpl(this._value, this._then);

  final ValueFailuer<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailuer<T>) _then;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T email});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailuerCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail(this.email);

  @override
  final T email;

  @override
  String toString() {
    return 'ValueFailuer<$T>.invalidEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidEmail<T> &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T email) invalidEmail,
    required TResult Function(T password) shortPassword,
  }) {
    return invalidEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T email)? invalidEmail,
    TResult Function(T password)? shortPassword,
  }) {
    return invalidEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T email)? invalidEmail,
    TResult Function(T password)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailuer<T> {
  const factory _InvalidEmail(T email) = _$_InvalidEmail<T>;

  T get email;
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T password});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailuerCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_ShortPassword<T>(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword(this.password);

  @override
  final T password;

  @override
  String toString() {
    return 'ValueFailuer<$T>.shortPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortPassword<T> &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T email) invalidEmail,
    required TResult Function(T password) shortPassword,
  }) {
    return shortPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T email)? invalidEmail,
    TResult Function(T password)? shortPassword,
  }) {
    return shortPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T email)? invalidEmail,
    TResult Function(T password)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailuer<T> {
  const factory _ShortPassword(T password) = _$_ShortPassword<T>;

  T get password;
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
