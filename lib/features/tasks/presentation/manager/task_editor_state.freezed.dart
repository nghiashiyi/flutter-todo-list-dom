// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? initialTodo) editing,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(String error) savedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo? initialTodo)? editing,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function(String error)? savedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? initialTodo)? editing,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(String error)? savedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditorEditingState value) editing,
    required TResult Function(TaskEditorSavingState value) saving,
    required TResult Function(TaskEditorSavedState value) saved,
    required TResult Function(TaskEditorSavedFailedState value) savedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditorEditingState value)? editing,
    TResult? Function(TaskEditorSavingState value)? saving,
    TResult? Function(TaskEditorSavedState value)? saved,
    TResult? Function(TaskEditorSavedFailedState value)? savedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditorEditingState value)? editing,
    TResult Function(TaskEditorSavingState value)? saving,
    TResult Function(TaskEditorSavedState value)? saved,
    TResult Function(TaskEditorSavedFailedState value)? savedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditorStateCopyWith<$Res> {
  factory $TaskEditorStateCopyWith(
          TaskEditorState value, $Res Function(TaskEditorState) then) =
      _$TaskEditorStateCopyWithImpl<$Res, TaskEditorState>;
}

/// @nodoc
class _$TaskEditorStateCopyWithImpl<$Res, $Val extends TaskEditorState>
    implements $TaskEditorStateCopyWith<$Res> {
  _$TaskEditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskEditorEditingStateCopyWith<$Res> {
  factory _$$TaskEditorEditingStateCopyWith(_$TaskEditorEditingState value,
          $Res Function(_$TaskEditorEditingState) then) =
      __$$TaskEditorEditingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo? initialTodo});
}

/// @nodoc
class __$$TaskEditorEditingStateCopyWithImpl<$Res>
    extends _$TaskEditorStateCopyWithImpl<$Res, _$TaskEditorEditingState>
    implements _$$TaskEditorEditingStateCopyWith<$Res> {
  __$$TaskEditorEditingStateCopyWithImpl(_$TaskEditorEditingState _value,
      $Res Function(_$TaskEditorEditingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialTodo = freezed,
  }) {
    return _then(_$TaskEditorEditingState(
      initialTodo: freezed == initialTodo
          ? _value.initialTodo
          : initialTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }
}

/// @nodoc

class _$TaskEditorEditingState implements TaskEditorEditingState {
  const _$TaskEditorEditingState({this.initialTodo});

  @override
  final Todo? initialTodo;

  @override
  String toString() {
    return 'TaskEditorState.editing(initialTodo: $initialTodo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditorEditingState &&
            (identical(other.initialTodo, initialTodo) ||
                other.initialTodo == initialTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialTodo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditorEditingStateCopyWith<_$TaskEditorEditingState> get copyWith =>
      __$$TaskEditorEditingStateCopyWithImpl<_$TaskEditorEditingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? initialTodo) editing,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(String error) savedFailed,
  }) {
    return editing(initialTodo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo? initialTodo)? editing,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function(String error)? savedFailed,
  }) {
    return editing?.call(initialTodo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? initialTodo)? editing,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(String error)? savedFailed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(initialTodo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditorEditingState value) editing,
    required TResult Function(TaskEditorSavingState value) saving,
    required TResult Function(TaskEditorSavedState value) saved,
    required TResult Function(TaskEditorSavedFailedState value) savedFailed,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditorEditingState value)? editing,
    TResult? Function(TaskEditorSavingState value)? saving,
    TResult? Function(TaskEditorSavedState value)? saved,
    TResult? Function(TaskEditorSavedFailedState value)? savedFailed,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditorEditingState value)? editing,
    TResult Function(TaskEditorSavingState value)? saving,
    TResult Function(TaskEditorSavedState value)? saved,
    TResult Function(TaskEditorSavedFailedState value)? savedFailed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class TaskEditorEditingState implements TaskEditorState {
  const factory TaskEditorEditingState({final Todo? initialTodo}) =
      _$TaskEditorEditingState;

  Todo? get initialTodo;
  @JsonKey(ignore: true)
  _$$TaskEditorEditingStateCopyWith<_$TaskEditorEditingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEditorSavingStateCopyWith<$Res> {
  factory _$$TaskEditorSavingStateCopyWith(_$TaskEditorSavingState value,
          $Res Function(_$TaskEditorSavingState) then) =
      __$$TaskEditorSavingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskEditorSavingStateCopyWithImpl<$Res>
    extends _$TaskEditorStateCopyWithImpl<$Res, _$TaskEditorSavingState>
    implements _$$TaskEditorSavingStateCopyWith<$Res> {
  __$$TaskEditorSavingStateCopyWithImpl(_$TaskEditorSavingState _value,
      $Res Function(_$TaskEditorSavingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskEditorSavingState implements TaskEditorSavingState {
  const _$TaskEditorSavingState();

  @override
  String toString() {
    return 'TaskEditorState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskEditorSavingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? initialTodo) editing,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(String error) savedFailed,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo? initialTodo)? editing,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function(String error)? savedFailed,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? initialTodo)? editing,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(String error)? savedFailed,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditorEditingState value) editing,
    required TResult Function(TaskEditorSavingState value) saving,
    required TResult Function(TaskEditorSavedState value) saved,
    required TResult Function(TaskEditorSavedFailedState value) savedFailed,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditorEditingState value)? editing,
    TResult? Function(TaskEditorSavingState value)? saving,
    TResult? Function(TaskEditorSavedState value)? saved,
    TResult? Function(TaskEditorSavedFailedState value)? savedFailed,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditorEditingState value)? editing,
    TResult Function(TaskEditorSavingState value)? saving,
    TResult Function(TaskEditorSavedState value)? saved,
    TResult Function(TaskEditorSavedFailedState value)? savedFailed,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class TaskEditorSavingState implements TaskEditorState {
  const factory TaskEditorSavingState() = _$TaskEditorSavingState;
}

/// @nodoc
abstract class _$$TaskEditorSavedStateCopyWith<$Res> {
  factory _$$TaskEditorSavedStateCopyWith(_$TaskEditorSavedState value,
          $Res Function(_$TaskEditorSavedState) then) =
      __$$TaskEditorSavedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskEditorSavedStateCopyWithImpl<$Res>
    extends _$TaskEditorStateCopyWithImpl<$Res, _$TaskEditorSavedState>
    implements _$$TaskEditorSavedStateCopyWith<$Res> {
  __$$TaskEditorSavedStateCopyWithImpl(_$TaskEditorSavedState _value,
      $Res Function(_$TaskEditorSavedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskEditorSavedState implements TaskEditorSavedState {
  const _$TaskEditorSavedState();

  @override
  String toString() {
    return 'TaskEditorState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskEditorSavedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? initialTodo) editing,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(String error) savedFailed,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo? initialTodo)? editing,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function(String error)? savedFailed,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? initialTodo)? editing,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(String error)? savedFailed,
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
    required TResult Function(TaskEditorEditingState value) editing,
    required TResult Function(TaskEditorSavingState value) saving,
    required TResult Function(TaskEditorSavedState value) saved,
    required TResult Function(TaskEditorSavedFailedState value) savedFailed,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditorEditingState value)? editing,
    TResult? Function(TaskEditorSavingState value)? saving,
    TResult? Function(TaskEditorSavedState value)? saved,
    TResult? Function(TaskEditorSavedFailedState value)? savedFailed,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditorEditingState value)? editing,
    TResult Function(TaskEditorSavingState value)? saving,
    TResult Function(TaskEditorSavedState value)? saved,
    TResult Function(TaskEditorSavedFailedState value)? savedFailed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class TaskEditorSavedState implements TaskEditorState {
  const factory TaskEditorSavedState() = _$TaskEditorSavedState;
}

/// @nodoc
abstract class _$$TaskEditorSavedFailedStateCopyWith<$Res> {
  factory _$$TaskEditorSavedFailedStateCopyWith(
          _$TaskEditorSavedFailedState value,
          $Res Function(_$TaskEditorSavedFailedState) then) =
      __$$TaskEditorSavedFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TaskEditorSavedFailedStateCopyWithImpl<$Res>
    extends _$TaskEditorStateCopyWithImpl<$Res, _$TaskEditorSavedFailedState>
    implements _$$TaskEditorSavedFailedStateCopyWith<$Res> {
  __$$TaskEditorSavedFailedStateCopyWithImpl(
      _$TaskEditorSavedFailedState _value,
      $Res Function(_$TaskEditorSavedFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TaskEditorSavedFailedState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskEditorSavedFailedState implements TaskEditorSavedFailedState {
  const _$TaskEditorSavedFailedState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TaskEditorState.savedFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditorSavedFailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditorSavedFailedStateCopyWith<_$TaskEditorSavedFailedState>
      get copyWith => __$$TaskEditorSavedFailedStateCopyWithImpl<
          _$TaskEditorSavedFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? initialTodo) editing,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function(String error) savedFailed,
  }) {
    return savedFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Todo? initialTodo)? editing,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function(String error)? savedFailed,
  }) {
    return savedFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? initialTodo)? editing,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function(String error)? savedFailed,
    required TResult orElse(),
  }) {
    if (savedFailed != null) {
      return savedFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskEditorEditingState value) editing,
    required TResult Function(TaskEditorSavingState value) saving,
    required TResult Function(TaskEditorSavedState value) saved,
    required TResult Function(TaskEditorSavedFailedState value) savedFailed,
  }) {
    return savedFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskEditorEditingState value)? editing,
    TResult? Function(TaskEditorSavingState value)? saving,
    TResult? Function(TaskEditorSavedState value)? saved,
    TResult? Function(TaskEditorSavedFailedState value)? savedFailed,
  }) {
    return savedFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskEditorEditingState value)? editing,
    TResult Function(TaskEditorSavingState value)? saving,
    TResult Function(TaskEditorSavedState value)? saved,
    TResult Function(TaskEditorSavedFailedState value)? savedFailed,
    required TResult orElse(),
  }) {
    if (savedFailed != null) {
      return savedFailed(this);
    }
    return orElse();
  }
}

abstract class TaskEditorSavedFailedState implements TaskEditorState {
  const factory TaskEditorSavedFailedState({required final String error}) =
      _$TaskEditorSavedFailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$TaskEditorSavedFailedStateCopyWith<_$TaskEditorSavedFailedState>
      get copyWith => throw _privateConstructorUsedError;
}
