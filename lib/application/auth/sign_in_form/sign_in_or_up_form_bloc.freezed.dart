// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_or_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInOrUpFormEventTearOff {
  const _$SignInOrUpFormEventTearOff();

  _EmailChange emailChanged(String email) {
    return _EmailChange(
      email,
    );
  }

  _PasswordChange passwordChanged(String password) {
    return _PasswordChange(
      password,
    );
  }

  _userNameChange userNameChanged(String userName) {
    return _userNameChange(
      userName,
    );
  }

  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return _SignInWithEmailAndPasswordPressed();
  }

  _RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return _RegisterWithEmailAndPasswordPressed();
  }

  _SignInGooglePressed signInGooglePressed() {
    return _SignInGooglePressed();
  }
}

/// @nodoc
const $SignInOrUpFormEvent = _$SignInOrUpFormEventTearOff();

/// @nodoc
mixin _$SignInOrUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInOrUpFormEventCopyWith<$Res> {
  factory $SignInOrUpFormEventCopyWith(
          SignInOrUpFormEvent value, $Res Function(SignInOrUpFormEvent) then) =
      _$SignInOrUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements $SignInOrUpFormEventCopyWith<$Res> {
  _$SignInOrUpFormEventCopyWithImpl(this._value, this._then);

  final SignInOrUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInOrUpFormEvent) _then;
}

/// @nodoc
abstract class _$EmailChangeCopyWith<$Res> {
  factory _$EmailChangeCopyWith(
          _EmailChange value, $Res Function(_EmailChange) then) =
      __$EmailChangeCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangeCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements _$EmailChangeCopyWith<$Res> {
  __$EmailChangeCopyWithImpl(
      _EmailChange _value, $Res Function(_EmailChange) _then)
      : super(_value, (v) => _then(v as _EmailChange));

  @override
  _EmailChange get _value => super._value as _EmailChange;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChange(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChange implements _EmailChange {
  _$_EmailChange(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInOrUpFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChange &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailChangeCopyWith<_EmailChange> get copyWith =>
      __$EmailChangeCopyWithImpl<_EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChange implements SignInOrUpFormEvent {
  factory _EmailChange(String email) = _$_EmailChange;

  String get email;
  @JsonKey(ignore: true)
  _$EmailChangeCopyWith<_EmailChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangeCopyWith<$Res> {
  factory _$PasswordChangeCopyWith(
          _PasswordChange value, $Res Function(_PasswordChange) then) =
      __$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangeCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements _$PasswordChangeCopyWith<$Res> {
  __$PasswordChangeCopyWithImpl(
      _PasswordChange _value, $Res Function(_PasswordChange) _then)
      : super(_value, (v) => _then(v as _PasswordChange));

  @override
  _PasswordChange get _value => super._value as _PasswordChange;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordChange(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChange implements _PasswordChange {
  _$_PasswordChange(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInOrUpFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChange &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      __$PasswordChangeCopyWithImpl<_PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements SignInOrUpFormEvent {
  factory _PasswordChange(String password) = _$_PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$userNameChangeCopyWith<$Res> {
  factory _$userNameChangeCopyWith(
          _userNameChange value, $Res Function(_userNameChange) then) =
      __$userNameChangeCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$userNameChangeCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements _$userNameChangeCopyWith<$Res> {
  __$userNameChangeCopyWithImpl(
      _userNameChange _value, $Res Function(_userNameChange) _then)
      : super(_value, (v) => _then(v as _userNameChange));

  @override
  _userNameChange get _value => super._value as _userNameChange;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_userNameChange(
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_userNameChange implements _userNameChange {
  _$_userNameChange(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'SignInOrUpFormEvent.userNameChanged(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _userNameChange &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$userNameChangeCopyWith<_userNameChange> get copyWith =>
      __$userNameChangeCopyWithImpl<_userNameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) {
    return userNameChanged(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) {
    return userNameChanged?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) {
    return userNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class _userNameChange implements SignInOrUpFormEvent {
  factory _userNameChange(String userName) = _$_userNameChange;

  String get userName;
  @JsonKey(ignore: true)
  _$userNameChangeCopyWith<_userNameChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordPressedCopyWith(
          _SignInWithEmailAndPasswordPressed value,
          $Res Function(_SignInWithEmailAndPasswordPressed) then) =
      __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _SignInWithEmailAndPasswordPressed _value,
      $Res Function(_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPasswordPressed));

  @override
  _SignInWithEmailAndPasswordPressed get _value =>
      super._value as _SignInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_SignInWithEmailAndPasswordPressed
    implements _SignInWithEmailAndPasswordPressed {
  _$_SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInOrUpFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordPressed
    implements SignInOrUpFormEvent {
  factory _SignInWithEmailAndPasswordPressed() =
      _$_SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordPressedCopyWith(
          _RegisterWithEmailAndPasswordPressed value,
          $Res Function(_RegisterWithEmailAndPasswordPressed) then) =
      __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPasswordPressed));

  @override
  _RegisterWithEmailAndPasswordPressed get _value =>
      super._value as _RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_RegisterWithEmailAndPasswordPressed
    implements _RegisterWithEmailAndPasswordPressed {
  _$_RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInOrUpFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed
    implements SignInOrUpFormEvent {
  factory _RegisterWithEmailAndPasswordPressed() =
      _$_RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInGooglePressedCopyWith<$Res> {
  factory _$SignInGooglePressedCopyWith(_SignInGooglePressed value,
          $Res Function(_SignInGooglePressed) then) =
      __$SignInGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInGooglePressedCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements _$SignInGooglePressedCopyWith<$Res> {
  __$SignInGooglePressedCopyWithImpl(
      _SignInGooglePressed _value, $Res Function(_SignInGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInGooglePressed));

  @override
  _SignInGooglePressed get _value => super._value as _SignInGooglePressed;
}

/// @nodoc

class _$_SignInGooglePressed implements _SignInGooglePressed {
  _$_SignInGooglePressed();

  @override
  String toString() {
    return 'SignInOrUpFormEvent.signInGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String userName) userNameChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) {
    return signInGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) {
    return signInGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String userName)? userNameChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (signInGooglePressed != null) {
      return signInGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_userNameChange value) userNameChanged,
    required TResult Function(_SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(_SignInGooglePressed value) signInGooglePressed,
  }) {
    return signInGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
  }) {
    return signInGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_userNameChange value)? userNameChanged,
    TResult Function(_SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(_SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (signInGooglePressed != null) {
      return signInGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInGooglePressed implements SignInOrUpFormEvent {
  factory _SignInGooglePressed() = _$_SignInGooglePressed;
}

/// @nodoc
class _$SignInOrUpFormStateTearOff {
  const _$SignInOrUpFormStateTearOff();

  _SignInFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required String userName,
      required bool isSubmitting,
      required AutovalidateMode showErrorMessagesforSignIn,
      required AutovalidateMode showErrorMessagesforSignUp,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      userName: userName,
      isSubmitting: isSubmitting,
      showErrorMessagesforSignIn: showErrorMessagesforSignIn,
      showErrorMessagesforSignUp: showErrorMessagesforSignUp,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInOrUpFormState = _$SignInOrUpFormStateTearOff();

/// @nodoc
mixin _$SignInOrUpFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessagesforSignIn =>
      throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessagesforSignUp =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInOrUpFormStateCopyWith<SignInOrUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInOrUpFormStateCopyWith<$Res> {
  factory $SignInOrUpFormStateCopyWith(
          SignInOrUpFormState value, $Res Function(SignInOrUpFormState) then) =
      _$SignInOrUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      String userName,
      bool isSubmitting,
      AutovalidateMode showErrorMessagesforSignIn,
      AutovalidateMode showErrorMessagesforSignUp,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInOrUpFormStateCopyWithImpl<$Res>
    implements $SignInOrUpFormStateCopyWith<$Res> {
  _$SignInOrUpFormStateCopyWithImpl(this._value, this._then);

  final SignInOrUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignInOrUpFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? userName = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessagesforSignIn = freezed,
    Object? showErrorMessagesforSignUp = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessagesforSignIn: showErrorMessagesforSignIn == freezed
          ? _value.showErrorMessagesforSignIn
          : showErrorMessagesforSignIn // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      showErrorMessagesforSignUp: showErrorMessagesforSignUp == freezed
          ? _value.showErrorMessagesforSignUp
          : showErrorMessagesforSignUp // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInOrUpFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      String userName,
      bool isSubmitting,
      AutovalidateMode showErrorMessagesforSignIn,
      AutovalidateMode showErrorMessagesforSignUp,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInOrUpFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? userName = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessagesforSignIn = freezed,
    Object? showErrorMessagesforSignUp = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessagesforSignIn: showErrorMessagesforSignIn == freezed
          ? _value.showErrorMessagesforSignIn
          : showErrorMessagesforSignIn // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      showErrorMessagesforSignUp: showErrorMessagesforSignUp == freezed
          ? _value.showErrorMessagesforSignUp
          : showErrorMessagesforSignUp // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.userName,
      required this.isSubmitting,
      required this.showErrorMessagesforSignIn,
      required this.showErrorMessagesforSignUp,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final String userName;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode showErrorMessagesforSignIn;
  @override
  final AutovalidateMode showErrorMessagesforSignUp;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInOrUpFormState(emailAddress: $emailAddress, password: $password, userName: $userName, isSubmitting: $isSubmitting, showErrorMessagesforSignIn: $showErrorMessagesforSignIn, showErrorMessagesforSignUp: $showErrorMessagesforSignUp, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.showErrorMessagesforSignIn, showErrorMessagesforSignIn) &&
            const DeepCollectionEquality().equals(
                other.showErrorMessagesforSignUp, showErrorMessagesforSignUp) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessagesforSignIn),
      const DeepCollectionEquality().hash(showErrorMessagesforSignUp),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInOrUpFormState {
  factory _SignInFormState(
      {required EmailAddress emailAddress,
      required Password password,
      required String userName,
      required bool isSubmitting,
      required AutovalidateMode showErrorMessagesforSignIn,
      required AutovalidateMode showErrorMessagesforSignUp,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  String get userName;
  @override
  bool get isSubmitting;
  @override
  AutovalidateMode get showErrorMessagesforSignIn;
  @override
  AutovalidateMode get showErrorMessagesforSignUp;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
