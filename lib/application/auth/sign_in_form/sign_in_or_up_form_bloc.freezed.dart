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

  EmailChange emailChanged(String email) {
    return EmailChange(
      email,
    );
  }

  PasswordChange passwordChanged(String password) {
    return PasswordChange(
      password,
    );
  }

  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return SignInWithEmailAndPasswordPressed();
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return RegisterWithEmailAndPasswordPressed();
  }

  SignInGooglePressed signInGooglePressed() {
    return SignInGooglePressed();
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
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChange value) emailChanged,
    required TResult Function(PasswordChange value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInGooglePressed value) signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
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
abstract class $EmailChangeCopyWith<$Res> {
  factory $EmailChangeCopyWith(
          EmailChange value, $Res Function(EmailChange) then) =
      _$EmailChangeCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangeCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements $EmailChangeCopyWith<$Res> {
  _$EmailChangeCopyWithImpl(
      EmailChange _value, $Res Function(EmailChange) _then)
      : super(_value, (v) => _then(v as EmailChange));

  @override
  EmailChange get _value => super._value as EmailChange;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChange(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChange implements EmailChange {
  _$EmailChange(this.email);

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
            other is EmailChange &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailChangeCopyWith<EmailChange> get copyWith =>
      _$EmailChangeCopyWithImpl<EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
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
    required TResult Function(EmailChange value) emailChanged,
    required TResult Function(PasswordChange value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInGooglePressed value) signInGooglePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChange implements SignInOrUpFormEvent {
  factory EmailChange(String email) = _$EmailChange;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangeCopyWith<EmailChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeCopyWith<$Res> {
  factory $PasswordChangeCopyWith(
          PasswordChange value, $Res Function(PasswordChange) then) =
      _$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangeCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  _$PasswordChangeCopyWithImpl(
      PasswordChange _value, $Res Function(PasswordChange) _then)
      : super(_value, (v) => _then(v as PasswordChange));

  @override
  PasswordChange get _value => super._value as PasswordChange;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChange(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChange implements PasswordChange {
  _$PasswordChange(this.password);

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
            other is PasswordChange &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangeCopyWith<PasswordChange> get copyWith =>
      _$PasswordChangeCopyWithImpl<PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
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
    required TResult Function(EmailChange value) emailChanged,
    required TResult Function(PasswordChange value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInGooglePressed value) signInGooglePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChange implements SignInOrUpFormEvent {
  factory PasswordChange(String password) = _$PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangeCopyWith<PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  _$SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInOrUpFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
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
    required TResult Function(EmailChange value) emailChanged,
    required TResult Function(PasswordChange value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInGooglePressed value) signInGooglePressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed
    implements SignInOrUpFormEvent {
  factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInOrUpFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
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
    required TResult Function(EmailChange value) emailChanged,
    required TResult Function(PasswordChange value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInGooglePressed value) signInGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed
    implements SignInOrUpFormEvent {
  factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SignInGooglePressedCopyWith<$Res> {
  factory $SignInGooglePressedCopyWith(
          SignInGooglePressed value, $Res Function(SignInGooglePressed) then) =
      _$SignInGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInGooglePressedCopyWithImpl<$Res>
    extends _$SignInOrUpFormEventCopyWithImpl<$Res>
    implements $SignInGooglePressedCopyWith<$Res> {
  _$SignInGooglePressedCopyWithImpl(
      SignInGooglePressed _value, $Res Function(SignInGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInGooglePressed));

  @override
  SignInGooglePressed get _value => super._value as SignInGooglePressed;
}

/// @nodoc

class _$SignInGooglePressed implements SignInGooglePressed {
  _$SignInGooglePressed();

  @override
  String toString() {
    return 'SignInOrUpFormEvent.signInGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
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
    required TResult Function(EmailChange value) emailChanged,
    required TResult Function(PasswordChange value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInGooglePressed value) signInGooglePressed,
  }) {
    return signInGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
  }) {
    return signInGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChange value)? emailChanged,
    TResult Function(PasswordChange value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInGooglePressed value)? signInGooglePressed,
    required TResult orElse(),
  }) {
    if (signInGooglePressed != null) {
      return signInGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInGooglePressed implements SignInOrUpFormEvent {
  factory SignInGooglePressed() = _$SignInGooglePressed;
}

/// @nodoc
class _$SignInOrUpFormStateTearOff {
  const _$SignInOrUpFormStateTearOff();

  _SignInFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required AutovalidateMode showErrorMessages,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
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
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
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
      bool isSubmitting,
      AutovalidateMode showErrorMessages,
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
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
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
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
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
      bool isSubmitting,
      AutovalidateMode showErrorMessages,
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
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
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
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
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
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInOrUpFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
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
      required bool isSubmitting,
      required AutovalidateMode showErrorMessages,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
