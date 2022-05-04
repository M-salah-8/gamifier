// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_editing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameEditingEventTearOff {
  const _$GameEditingEventTearOff();

  _EditingStarted editingStarted(GamePrimitive game) {
    return _EditingStarted(
      game,
    );
  }

  _NameEditied nameEditied(String newName) {
    return _NameEditied(
      newName,
    );
  }

  _TodoEditied todoEditied(GameTodoPrimitive todo) {
    return _TodoEditied(
      todo,
    );
  }

  _TodoAdded todoAdded(GameTodoPrimitive todo) {
    return _TodoAdded(
      todo,
    );
  }

  _TodoDeleted todoDeleted(GameTodoPrimitive todo) {
    return _TodoDeleted(
      todo,
    );
  }

  _Saved saved() {
    return _Saved();
  }

  _Canceled canceled() {
    return _Canceled();
  }
}

/// @nodoc
const $GameEditingEvent = _$GameEditingEventTearOff();

/// @nodoc
mixin _$GameEditingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEditingEventCopyWith<$Res> {
  factory $GameEditingEventCopyWith(
          GameEditingEvent value, $Res Function(GameEditingEvent) then) =
      _$GameEditingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameEditingEventCopyWithImpl<$Res>
    implements $GameEditingEventCopyWith<$Res> {
  _$GameEditingEventCopyWithImpl(this._value, this._then);

  final GameEditingEvent _value;
  // ignore: unused_field
  final $Res Function(GameEditingEvent) _then;
}

/// @nodoc
abstract class _$EditingStartedCopyWith<$Res> {
  factory _$EditingStartedCopyWith(
          _EditingStarted value, $Res Function(_EditingStarted) then) =
      __$EditingStartedCopyWithImpl<$Res>;
  $Res call({GamePrimitive game});

  $GamePrimitiveCopyWith<$Res> get game;
}

/// @nodoc
class __$EditingStartedCopyWithImpl<$Res>
    extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$EditingStartedCopyWith<$Res> {
  __$EditingStartedCopyWithImpl(
      _EditingStarted _value, $Res Function(_EditingStarted) _then)
      : super(_value, (v) => _then(v as _EditingStarted));

  @override
  _EditingStarted get _value => super._value as _EditingStarted;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_EditingStarted(
      game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
    ));
  }

  @override
  $GamePrimitiveCopyWith<$Res> get game {
    return $GamePrimitiveCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$_EditingStarted implements _EditingStarted {
  _$_EditingStarted(this.game);

  @override
  final GamePrimitive game;

  @override
  String toString() {
    return 'GameEditingEvent.editingStarted(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditingStarted &&
            const DeepCollectionEquality().equals(other.game, game));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(game));

  @JsonKey(ignore: true)
  @override
  _$EditingStartedCopyWith<_EditingStarted> get copyWith =>
      __$EditingStartedCopyWithImpl<_EditingStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return editingStarted(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return editingStarted?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (editingStarted != null) {
      return editingStarted(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return editingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return editingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (editingStarted != null) {
      return editingStarted(this);
    }
    return orElse();
  }
}

abstract class _EditingStarted implements GameEditingEvent {
  factory _EditingStarted(GamePrimitive game) = _$_EditingStarted;

  GamePrimitive get game;
  @JsonKey(ignore: true)
  _$EditingStartedCopyWith<_EditingStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameEditiedCopyWith<$Res> {
  factory _$NameEditiedCopyWith(
          _NameEditied value, $Res Function(_NameEditied) then) =
      __$NameEditiedCopyWithImpl<$Res>;
  $Res call({String newName});
}

/// @nodoc
class __$NameEditiedCopyWithImpl<$Res>
    extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$NameEditiedCopyWith<$Res> {
  __$NameEditiedCopyWithImpl(
      _NameEditied _value, $Res Function(_NameEditied) _then)
      : super(_value, (v) => _then(v as _NameEditied));

  @override
  _NameEditied get _value => super._value as _NameEditied;

  @override
  $Res call({
    Object? newName = freezed,
  }) {
    return _then(_NameEditied(
      newName == freezed
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameEditied implements _NameEditied {
  _$_NameEditied(this.newName);

  @override
  final String newName;

  @override
  String toString() {
    return 'GameEditingEvent.nameEditied(newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameEditied &&
            const DeepCollectionEquality().equals(other.newName, newName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newName));

  @JsonKey(ignore: true)
  @override
  _$NameEditiedCopyWith<_NameEditied> get copyWith =>
      __$NameEditiedCopyWithImpl<_NameEditied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return nameEditied(newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return nameEditied?.call(newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (nameEditied != null) {
      return nameEditied(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return nameEditied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return nameEditied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (nameEditied != null) {
      return nameEditied(this);
    }
    return orElse();
  }
}

abstract class _NameEditied implements GameEditingEvent {
  factory _NameEditied(String newName) = _$_NameEditied;

  String get newName;
  @JsonKey(ignore: true)
  _$NameEditiedCopyWith<_NameEditied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoEditiedCopyWith<$Res> {
  factory _$TodoEditiedCopyWith(
          _TodoEditied value, $Res Function(_TodoEditied) then) =
      __$TodoEditiedCopyWithImpl<$Res>;
  $Res call({GameTodoPrimitive todo});

  $GameTodoPrimitiveCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoEditiedCopyWithImpl<$Res>
    extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$TodoEditiedCopyWith<$Res> {
  __$TodoEditiedCopyWithImpl(
      _TodoEditied _value, $Res Function(_TodoEditied) _then)
      : super(_value, (v) => _then(v as _TodoEditied));

  @override
  _TodoEditied get _value => super._value as _TodoEditied;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_TodoEditied(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as GameTodoPrimitive,
    ));
  }

  @override
  $GameTodoPrimitiveCopyWith<$Res> get todo {
    return $GameTodoPrimitiveCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_TodoEditied implements _TodoEditied {
  _$_TodoEditied(this.todo);

  @override
  final GameTodoPrimitive todo;

  @override
  String toString() {
    return 'GameEditingEvent.todoEditied(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoEditied &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$TodoEditiedCopyWith<_TodoEditied> get copyWith =>
      __$TodoEditiedCopyWithImpl<_TodoEditied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return todoEditied(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return todoEditied?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (todoEditied != null) {
      return todoEditied(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return todoEditied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return todoEditied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (todoEditied != null) {
      return todoEditied(this);
    }
    return orElse();
  }
}

abstract class _TodoEditied implements GameEditingEvent {
  factory _TodoEditied(GameTodoPrimitive todo) = _$_TodoEditied;

  GameTodoPrimitive get todo;
  @JsonKey(ignore: true)
  _$TodoEditiedCopyWith<_TodoEditied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoAddedCopyWith<$Res> {
  factory _$TodoAddedCopyWith(
          _TodoAdded value, $Res Function(_TodoAdded) then) =
      __$TodoAddedCopyWithImpl<$Res>;
  $Res call({GameTodoPrimitive todo});

  $GameTodoPrimitiveCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoAddedCopyWithImpl<$Res>
    extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$TodoAddedCopyWith<$Res> {
  __$TodoAddedCopyWithImpl(_TodoAdded _value, $Res Function(_TodoAdded) _then)
      : super(_value, (v) => _then(v as _TodoAdded));

  @override
  _TodoAdded get _value => super._value as _TodoAdded;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_TodoAdded(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as GameTodoPrimitive,
    ));
  }

  @override
  $GameTodoPrimitiveCopyWith<$Res> get todo {
    return $GameTodoPrimitiveCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_TodoAdded implements _TodoAdded {
  _$_TodoAdded(this.todo);

  @override
  final GameTodoPrimitive todo;

  @override
  String toString() {
    return 'GameEditingEvent.todoAdded(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoAdded &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$TodoAddedCopyWith<_TodoAdded> get copyWith =>
      __$TodoAddedCopyWithImpl<_TodoAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return todoAdded(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return todoAdded?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (todoAdded != null) {
      return todoAdded(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return todoAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return todoAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (todoAdded != null) {
      return todoAdded(this);
    }
    return orElse();
  }
}

abstract class _TodoAdded implements GameEditingEvent {
  factory _TodoAdded(GameTodoPrimitive todo) = _$_TodoAdded;

  GameTodoPrimitive get todo;
  @JsonKey(ignore: true)
  _$TodoAddedCopyWith<_TodoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoDeletedCopyWith<$Res> {
  factory _$TodoDeletedCopyWith(
          _TodoDeleted value, $Res Function(_TodoDeleted) then) =
      __$TodoDeletedCopyWithImpl<$Res>;
  $Res call({GameTodoPrimitive todo});

  $GameTodoPrimitiveCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoDeletedCopyWithImpl<$Res>
    extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$TodoDeletedCopyWith<$Res> {
  __$TodoDeletedCopyWithImpl(
      _TodoDeleted _value, $Res Function(_TodoDeleted) _then)
      : super(_value, (v) => _then(v as _TodoDeleted));

  @override
  _TodoDeleted get _value => super._value as _TodoDeleted;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_TodoDeleted(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as GameTodoPrimitive,
    ));
  }

  @override
  $GameTodoPrimitiveCopyWith<$Res> get todo {
    return $GameTodoPrimitiveCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_TodoDeleted implements _TodoDeleted {
  _$_TodoDeleted(this.todo);

  @override
  final GameTodoPrimitive todo;

  @override
  String toString() {
    return 'GameEditingEvent.todoDeleted(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoDeleted &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$TodoDeletedCopyWith<_TodoDeleted> get copyWith =>
      __$TodoDeletedCopyWithImpl<_TodoDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return todoDeleted(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return todoDeleted?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return todoDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return todoDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(this);
    }
    return orElse();
  }
}

abstract class _TodoDeleted implements GameEditingEvent {
  factory _TodoDeleted(GameTodoPrimitive todo) = _$_TodoDeleted;

  GameTodoPrimitive get todo;
  @JsonKey(ignore: true)
  _$TodoDeletedCopyWith<_TodoDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  _$_Saved();

  @override
  String toString() {
    return 'GameEditingEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements GameEditingEvent {
  factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$CanceledCopyWith<$Res> {
  factory _$CanceledCopyWith(_Canceled value, $Res Function(_Canceled) then) =
      __$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$CanceledCopyWithImpl<$Res> extends _$GameEditingEventCopyWithImpl<$Res>
    implements _$CanceledCopyWith<$Res> {
  __$CanceledCopyWithImpl(_Canceled _value, $Res Function(_Canceled) _then)
      : super(_value, (v) => _then(v as _Canceled));

  @override
  _Canceled get _value => super._value as _Canceled;
}

/// @nodoc

class _$_Canceled implements _Canceled {
  _$_Canceled();

  @override
  String toString() {
    return 'GameEditingEvent.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GamePrimitive game) editingStarted,
    required TResult Function(String newName) nameEditied,
    required TResult Function(GameTodoPrimitive todo) todoEditied,
    required TResult Function(GameTodoPrimitive todo) todoAdded,
    required TResult Function(GameTodoPrimitive todo) todoDeleted,
    required TResult Function() saved,
    required TResult Function() canceled,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GamePrimitive game)? editingStarted,
    TResult Function(String newName)? nameEditied,
    TResult Function(GameTodoPrimitive todo)? todoEditied,
    TResult Function(GameTodoPrimitive todo)? todoAdded,
    TResult Function(GameTodoPrimitive todo)? todoDeleted,
    TResult Function()? saved,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditingStarted value) editingStarted,
    required TResult Function(_NameEditied value) nameEditied,
    required TResult Function(_TodoEditied value) todoEditied,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoDeleted value) todoDeleted,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Canceled value) canceled,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditingStarted value)? editingStarted,
    TResult Function(_NameEditied value)? nameEditied,
    TResult Function(_TodoEditied value)? todoEditied,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoDeleted value)? todoDeleted,
    TResult Function(_Saved value)? saved,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class _Canceled implements GameEditingEvent {
  factory _Canceled() = _$_Canceled;
}

/// @nodoc
class _$GameEditingStateTearOff {
  const _$GameEditingStateTearOff();

  _EditedData editedData(
      {required String? newGameName,
      required KtList<GameTodoPrimitive>? editedTodos,
      required KtList<GameTodoPrimitive>? addedTodos,
      required KtList<GameTodoPrimitive>? deletedTodos}) {
    return _EditedData(
      newGameName: newGameName,
      editedTodos: editedTodos,
      addedTodos: addedTodos,
      deletedTodos: deletedTodos,
    );
  }

  _EditingStarte editingStarted() {
    return const _EditingStarte();
  }

  _EditingEnded editingEnded() {
    return const _EditingEnded();
  }

  _SaveLoading saveLoading(bool loading) {
    return _SaveLoading(
      loading,
    );
  }

  _OldGameState oldGameState(GamePrimitive game) {
    return _OldGameState(
      game,
    );
  }
}

/// @nodoc
const $GameEditingState = _$GameEditingStateTearOff();

/// @nodoc
mixin _$GameEditingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)
        editedData,
    required TResult Function() editingStarted,
    required TResult Function() editingEnded,
    required TResult Function(bool loading) saveLoading,
    required TResult Function(GamePrimitive game) oldGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditedData value) editedData,
    required TResult Function(_EditingStarte value) editingStarted,
    required TResult Function(_EditingEnded value) editingEnded,
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_OldGameState value) oldGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEditingStateCopyWith<$Res> {
  factory $GameEditingStateCopyWith(
          GameEditingState value, $Res Function(GameEditingState) then) =
      _$GameEditingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameEditingStateCopyWithImpl<$Res>
    implements $GameEditingStateCopyWith<$Res> {
  _$GameEditingStateCopyWithImpl(this._value, this._then);

  final GameEditingState _value;
  // ignore: unused_field
  final $Res Function(GameEditingState) _then;
}

/// @nodoc
abstract class _$EditedDataCopyWith<$Res> {
  factory _$EditedDataCopyWith(
          _EditedData value, $Res Function(_EditedData) then) =
      __$EditedDataCopyWithImpl<$Res>;
  $Res call(
      {String? newGameName,
      KtList<GameTodoPrimitive>? editedTodos,
      KtList<GameTodoPrimitive>? addedTodos,
      KtList<GameTodoPrimitive>? deletedTodos});
}

/// @nodoc
class __$EditedDataCopyWithImpl<$Res>
    extends _$GameEditingStateCopyWithImpl<$Res>
    implements _$EditedDataCopyWith<$Res> {
  __$EditedDataCopyWithImpl(
      _EditedData _value, $Res Function(_EditedData) _then)
      : super(_value, (v) => _then(v as _EditedData));

  @override
  _EditedData get _value => super._value as _EditedData;

  @override
  $Res call({
    Object? newGameName = freezed,
    Object? editedTodos = freezed,
    Object? addedTodos = freezed,
    Object? deletedTodos = freezed,
  }) {
    return _then(_EditedData(
      newGameName: newGameName == freezed
          ? _value.newGameName
          : newGameName // ignore: cast_nullable_to_non_nullable
              as String?,
      editedTodos: editedTodos == freezed
          ? _value.editedTodos
          : editedTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodoPrimitive>?,
      addedTodos: addedTodos == freezed
          ? _value.addedTodos
          : addedTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodoPrimitive>?,
      deletedTodos: deletedTodos == freezed
          ? _value.deletedTodos
          : deletedTodos // ignore: cast_nullable_to_non_nullable
              as KtList<GameTodoPrimitive>?,
    ));
  }
}

/// @nodoc

class _$_EditedData implements _EditedData {
  const _$_EditedData(
      {required this.newGameName,
      required this.editedTodos,
      required this.addedTodos,
      required this.deletedTodos});

  @override
  final String? newGameName;
  @override
  final KtList<GameTodoPrimitive>? editedTodos;
  @override
  final KtList<GameTodoPrimitive>? addedTodos;
  @override
  final KtList<GameTodoPrimitive>? deletedTodos;

  @override
  String toString() {
    return 'GameEditingState.editedData(newGameName: $newGameName, editedTodos: $editedTodos, addedTodos: $addedTodos, deletedTodos: $deletedTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditedData &&
            const DeepCollectionEquality()
                .equals(other.newGameName, newGameName) &&
            const DeepCollectionEquality()
                .equals(other.editedTodos, editedTodos) &&
            const DeepCollectionEquality()
                .equals(other.addedTodos, addedTodos) &&
            const DeepCollectionEquality()
                .equals(other.deletedTodos, deletedTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newGameName),
      const DeepCollectionEquality().hash(editedTodos),
      const DeepCollectionEquality().hash(addedTodos),
      const DeepCollectionEquality().hash(deletedTodos));

  @JsonKey(ignore: true)
  @override
  _$EditedDataCopyWith<_EditedData> get copyWith =>
      __$EditedDataCopyWithImpl<_EditedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)
        editedData,
    required TResult Function() editingStarted,
    required TResult Function() editingEnded,
    required TResult Function(bool loading) saveLoading,
    required TResult Function(GamePrimitive game) oldGameState,
  }) {
    return editedData(newGameName, editedTodos, addedTodos, deletedTodos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
  }) {
    return editedData?.call(newGameName, editedTodos, addedTodos, deletedTodos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
    required TResult orElse(),
  }) {
    if (editedData != null) {
      return editedData(newGameName, editedTodos, addedTodos, deletedTodos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditedData value) editedData,
    required TResult Function(_EditingStarte value) editingStarted,
    required TResult Function(_EditingEnded value) editingEnded,
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_OldGameState value) oldGameState,
  }) {
    return editedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
  }) {
    return editedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
    required TResult orElse(),
  }) {
    if (editedData != null) {
      return editedData(this);
    }
    return orElse();
  }
}

abstract class _EditedData implements GameEditingState {
  const factory _EditedData(
      {required String? newGameName,
      required KtList<GameTodoPrimitive>? editedTodos,
      required KtList<GameTodoPrimitive>? addedTodos,
      required KtList<GameTodoPrimitive>? deletedTodos}) = _$_EditedData;

  String? get newGameName;
  KtList<GameTodoPrimitive>? get editedTodos;
  KtList<GameTodoPrimitive>? get addedTodos;
  KtList<GameTodoPrimitive>? get deletedTodos;
  @JsonKey(ignore: true)
  _$EditedDataCopyWith<_EditedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditingStarteCopyWith<$Res> {
  factory _$EditingStarteCopyWith(
          _EditingStarte value, $Res Function(_EditingStarte) then) =
      __$EditingStarteCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditingStarteCopyWithImpl<$Res>
    extends _$GameEditingStateCopyWithImpl<$Res>
    implements _$EditingStarteCopyWith<$Res> {
  __$EditingStarteCopyWithImpl(
      _EditingStarte _value, $Res Function(_EditingStarte) _then)
      : super(_value, (v) => _then(v as _EditingStarte));

  @override
  _EditingStarte get _value => super._value as _EditingStarte;
}

/// @nodoc

class _$_EditingStarte implements _EditingStarte {
  const _$_EditingStarte();

  @override
  String toString() {
    return 'GameEditingState.editingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EditingStarte);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)
        editedData,
    required TResult Function() editingStarted,
    required TResult Function() editingEnded,
    required TResult Function(bool loading) saveLoading,
    required TResult Function(GamePrimitive game) oldGameState,
  }) {
    return editingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
  }) {
    return editingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
    required TResult orElse(),
  }) {
    if (editingStarted != null) {
      return editingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditedData value) editedData,
    required TResult Function(_EditingStarte value) editingStarted,
    required TResult Function(_EditingEnded value) editingEnded,
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_OldGameState value) oldGameState,
  }) {
    return editingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
  }) {
    return editingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
    required TResult orElse(),
  }) {
    if (editingStarted != null) {
      return editingStarted(this);
    }
    return orElse();
  }
}

abstract class _EditingStarte implements GameEditingState {
  const factory _EditingStarte() = _$_EditingStarte;
}

/// @nodoc
abstract class _$EditingEndedCopyWith<$Res> {
  factory _$EditingEndedCopyWith(
          _EditingEnded value, $Res Function(_EditingEnded) then) =
      __$EditingEndedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditingEndedCopyWithImpl<$Res>
    extends _$GameEditingStateCopyWithImpl<$Res>
    implements _$EditingEndedCopyWith<$Res> {
  __$EditingEndedCopyWithImpl(
      _EditingEnded _value, $Res Function(_EditingEnded) _then)
      : super(_value, (v) => _then(v as _EditingEnded));

  @override
  _EditingEnded get _value => super._value as _EditingEnded;
}

/// @nodoc

class _$_EditingEnded implements _EditingEnded {
  const _$_EditingEnded();

  @override
  String toString() {
    return 'GameEditingState.editingEnded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EditingEnded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)
        editedData,
    required TResult Function() editingStarted,
    required TResult Function() editingEnded,
    required TResult Function(bool loading) saveLoading,
    required TResult Function(GamePrimitive game) oldGameState,
  }) {
    return editingEnded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
  }) {
    return editingEnded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
    required TResult orElse(),
  }) {
    if (editingEnded != null) {
      return editingEnded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditedData value) editedData,
    required TResult Function(_EditingStarte value) editingStarted,
    required TResult Function(_EditingEnded value) editingEnded,
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_OldGameState value) oldGameState,
  }) {
    return editingEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
  }) {
    return editingEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
    required TResult orElse(),
  }) {
    if (editingEnded != null) {
      return editingEnded(this);
    }
    return orElse();
  }
}

abstract class _EditingEnded implements GameEditingState {
  const factory _EditingEnded() = _$_EditingEnded;
}

/// @nodoc
abstract class _$SaveLoadingCopyWith<$Res> {
  factory _$SaveLoadingCopyWith(
          _SaveLoading value, $Res Function(_SaveLoading) then) =
      __$SaveLoadingCopyWithImpl<$Res>;
  $Res call({bool loading});
}

/// @nodoc
class __$SaveLoadingCopyWithImpl<$Res>
    extends _$GameEditingStateCopyWithImpl<$Res>
    implements _$SaveLoadingCopyWith<$Res> {
  __$SaveLoadingCopyWithImpl(
      _SaveLoading _value, $Res Function(_SaveLoading) _then)
      : super(_value, (v) => _then(v as _SaveLoading));

  @override
  _SaveLoading get _value => super._value as _SaveLoading;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_SaveLoading(
      loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SaveLoading implements _SaveLoading {
  const _$_SaveLoading(this.loading);

  @override
  final bool loading;

  @override
  String toString() {
    return 'GameEditingState.saveLoading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveLoading &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$SaveLoadingCopyWith<_SaveLoading> get copyWith =>
      __$SaveLoadingCopyWithImpl<_SaveLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)
        editedData,
    required TResult Function() editingStarted,
    required TResult Function() editingEnded,
    required TResult Function(bool loading) saveLoading,
    required TResult Function(GamePrimitive game) oldGameState,
  }) {
    return saveLoading(loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
  }) {
    return saveLoading?.call(loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
    required TResult orElse(),
  }) {
    if (saveLoading != null) {
      return saveLoading(loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditedData value) editedData,
    required TResult Function(_EditingStarte value) editingStarted,
    required TResult Function(_EditingEnded value) editingEnded,
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_OldGameState value) oldGameState,
  }) {
    return saveLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
  }) {
    return saveLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
    required TResult orElse(),
  }) {
    if (saveLoading != null) {
      return saveLoading(this);
    }
    return orElse();
  }
}

abstract class _SaveLoading implements GameEditingState {
  const factory _SaveLoading(bool loading) = _$_SaveLoading;

  bool get loading;
  @JsonKey(ignore: true)
  _$SaveLoadingCopyWith<_SaveLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OldGameStateCopyWith<$Res> {
  factory _$OldGameStateCopyWith(
          _OldGameState value, $Res Function(_OldGameState) then) =
      __$OldGameStateCopyWithImpl<$Res>;
  $Res call({GamePrimitive game});

  $GamePrimitiveCopyWith<$Res> get game;
}

/// @nodoc
class __$OldGameStateCopyWithImpl<$Res>
    extends _$GameEditingStateCopyWithImpl<$Res>
    implements _$OldGameStateCopyWith<$Res> {
  __$OldGameStateCopyWithImpl(
      _OldGameState _value, $Res Function(_OldGameState) _then)
      : super(_value, (v) => _then(v as _OldGameState));

  @override
  _OldGameState get _value => super._value as _OldGameState;

  @override
  $Res call({
    Object? game = freezed,
  }) {
    return _then(_OldGameState(
      game == freezed
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GamePrimitive,
    ));
  }

  @override
  $GamePrimitiveCopyWith<$Res> get game {
    return $GamePrimitiveCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$_OldGameState implements _OldGameState {
  const _$_OldGameState(this.game);

  @override
  final GamePrimitive game;

  @override
  String toString() {
    return 'GameEditingState.oldGameState(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OldGameState &&
            const DeepCollectionEquality().equals(other.game, game));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(game));

  @JsonKey(ignore: true)
  @override
  _$OldGameStateCopyWith<_OldGameState> get copyWith =>
      __$OldGameStateCopyWithImpl<_OldGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)
        editedData,
    required TResult Function() editingStarted,
    required TResult Function() editingEnded,
    required TResult Function(bool loading) saveLoading,
    required TResult Function(GamePrimitive game) oldGameState,
  }) {
    return oldGameState(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
  }) {
    return oldGameState?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? newGameName,
            KtList<GameTodoPrimitive>? editedTodos,
            KtList<GameTodoPrimitive>? addedTodos,
            KtList<GameTodoPrimitive>? deletedTodos)?
        editedData,
    TResult Function()? editingStarted,
    TResult Function()? editingEnded,
    TResult Function(bool loading)? saveLoading,
    TResult Function(GamePrimitive game)? oldGameState,
    required TResult orElse(),
  }) {
    if (oldGameState != null) {
      return oldGameState(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditedData value) editedData,
    required TResult Function(_EditingStarte value) editingStarted,
    required TResult Function(_EditingEnded value) editingEnded,
    required TResult Function(_SaveLoading value) saveLoading,
    required TResult Function(_OldGameState value) oldGameState,
  }) {
    return oldGameState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
  }) {
    return oldGameState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditedData value)? editedData,
    TResult Function(_EditingStarte value)? editingStarted,
    TResult Function(_EditingEnded value)? editingEnded,
    TResult Function(_SaveLoading value)? saveLoading,
    TResult Function(_OldGameState value)? oldGameState,
    required TResult orElse(),
  }) {
    if (oldGameState != null) {
      return oldGameState(this);
    }
    return orElse();
  }
}

abstract class _OldGameState implements GameEditingState {
  const factory _OldGameState(GamePrimitive game) = _$_OldGameState;

  GamePrimitive get game;
  @JsonKey(ignore: true)
  _$OldGameStateCopyWith<_OldGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
