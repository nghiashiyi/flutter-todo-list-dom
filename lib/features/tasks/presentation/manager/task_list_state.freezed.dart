// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, bool isSorting) loaded,
    required TResult Function(String error) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult? Function(String error)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListUninitializedState value) uninitialized,
    required TResult Function(TaskListLoadingState value) loading,
    required TResult Function(TaskListLoadedState value) loaded,
    required TResult Function(TaskListLoadedFailedState value) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListUninitializedState value)? uninitialized,
    TResult? Function(TaskListLoadingState value)? loading,
    TResult? Function(TaskListLoadedState value)? loaded,
    TResult? Function(TaskListLoadedFailedState value)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListUninitializedState value)? uninitialized,
    TResult Function(TaskListLoadingState value)? loading,
    TResult Function(TaskListLoadedState value)? loaded,
    TResult Function(TaskListLoadedFailedState value)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskListUninitializedStateCopyWith<$Res> {
  factory _$$TaskListUninitializedStateCopyWith(
          _$TaskListUninitializedState value,
          $Res Function(_$TaskListUninitializedState) then) =
      __$$TaskListUninitializedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskListUninitializedStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListUninitializedState>
    implements _$$TaskListUninitializedStateCopyWith<$Res> {
  __$$TaskListUninitializedStateCopyWithImpl(
      _$TaskListUninitializedState _value,
      $Res Function(_$TaskListUninitializedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskListUninitializedState implements TaskListUninitializedState {
  const _$TaskListUninitializedState();

  @override
  String toString() {
    return 'TaskListState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListUninitializedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, bool isSorting) loaded,
    required TResult Function(String error) loadedFailed,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult? Function(String error)? loadedFailed,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListUninitializedState value) uninitialized,
    required TResult Function(TaskListLoadingState value) loading,
    required TResult Function(TaskListLoadedState value) loaded,
    required TResult Function(TaskListLoadedFailedState value) loadedFailed,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListUninitializedState value)? uninitialized,
    TResult? Function(TaskListLoadingState value)? loading,
    TResult? Function(TaskListLoadedState value)? loaded,
    TResult? Function(TaskListLoadedFailedState value)? loadedFailed,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListUninitializedState value)? uninitialized,
    TResult Function(TaskListLoadingState value)? loading,
    TResult Function(TaskListLoadedState value)? loaded,
    TResult Function(TaskListLoadedFailedState value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class TaskListUninitializedState implements TaskListState {
  const factory TaskListUninitializedState() = _$TaskListUninitializedState;
}

/// @nodoc
abstract class _$$TaskListLoadingStateCopyWith<$Res> {
  factory _$$TaskListLoadingStateCopyWith(_$TaskListLoadingState value,
          $Res Function(_$TaskListLoadingState) then) =
      __$$TaskListLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskListLoadingStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListLoadingState>
    implements _$$TaskListLoadingStateCopyWith<$Res> {
  __$$TaskListLoadingStateCopyWithImpl(_$TaskListLoadingState _value,
      $Res Function(_$TaskListLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskListLoadingState implements TaskListLoadingState {
  const _$TaskListLoadingState();

  @override
  String toString() {
    return 'TaskListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, bool isSorting) loaded,
    required TResult Function(String error) loadedFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult? Function(String error)? loadedFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListUninitializedState value) uninitialized,
    required TResult Function(TaskListLoadingState value) loading,
    required TResult Function(TaskListLoadedState value) loaded,
    required TResult Function(TaskListLoadedFailedState value) loadedFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListUninitializedState value)? uninitialized,
    TResult? Function(TaskListLoadingState value)? loading,
    TResult? Function(TaskListLoadedState value)? loaded,
    TResult? Function(TaskListLoadedFailedState value)? loadedFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListUninitializedState value)? uninitialized,
    TResult Function(TaskListLoadingState value)? loading,
    TResult Function(TaskListLoadedState value)? loaded,
    TResult Function(TaskListLoadedFailedState value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskListLoadingState implements TaskListState {
  const factory TaskListLoadingState() = _$TaskListLoadingState;
}

/// @nodoc
abstract class _$$TaskListLoadedStateCopyWith<$Res> {
  factory _$$TaskListLoadedStateCopyWith(_$TaskListLoadedState value,
          $Res Function(_$TaskListLoadedState) then) =
      __$$TaskListLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> tasks, bool isSorting});
}

/// @nodoc
class __$$TaskListLoadedStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListLoadedState>
    implements _$$TaskListLoadedStateCopyWith<$Res> {
  __$$TaskListLoadedStateCopyWithImpl(
      _$TaskListLoadedState _value, $Res Function(_$TaskListLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isSorting = null,
  }) {
    return _then(_$TaskListLoadedState(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      isSorting: null == isSorting
          ? _value.isSorting
          : isSorting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskListLoadedState implements TaskListLoadedState {
  const _$TaskListLoadedState(
      {required final List<Todo> tasks, this.isSorting = false})
      : _tasks = tasks;

  final List<Todo> _tasks;
  @override
  List<Todo> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final bool isSorting;

  @override
  String toString() {
    return 'TaskListState.loaded(tasks: $tasks, isSorting: $isSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListLoadedState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isSorting, isSorting) ||
                other.isSorting == isSorting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), isSorting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListLoadedStateCopyWith<_$TaskListLoadedState> get copyWith =>
      __$$TaskListLoadedStateCopyWithImpl<_$TaskListLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, bool isSorting) loaded,
    required TResult Function(String error) loadedFailed,
  }) {
    return loaded(tasks, isSorting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult? Function(String error)? loadedFailed,
  }) {
    return loaded?.call(tasks, isSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks, isSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListUninitializedState value) uninitialized,
    required TResult Function(TaskListLoadingState value) loading,
    required TResult Function(TaskListLoadedState value) loaded,
    required TResult Function(TaskListLoadedFailedState value) loadedFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListUninitializedState value)? uninitialized,
    TResult? Function(TaskListLoadingState value)? loading,
    TResult? Function(TaskListLoadedState value)? loaded,
    TResult? Function(TaskListLoadedFailedState value)? loadedFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListUninitializedState value)? uninitialized,
    TResult Function(TaskListLoadingState value)? loading,
    TResult Function(TaskListLoadedState value)? loaded,
    TResult Function(TaskListLoadedFailedState value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TaskListLoadedState implements TaskListState {
  const factory TaskListLoadedState(
      {required final List<Todo> tasks,
      final bool isSorting}) = _$TaskListLoadedState;

  List<Todo> get tasks;
  bool get isSorting;
  @JsonKey(ignore: true)
  _$$TaskListLoadedStateCopyWith<_$TaskListLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskListLoadedFailedStateCopyWith<$Res> {
  factory _$$TaskListLoadedFailedStateCopyWith(
          _$TaskListLoadedFailedState value,
          $Res Function(_$TaskListLoadedFailedState) then) =
      __$$TaskListLoadedFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$TaskListLoadedFailedStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$TaskListLoadedFailedState>
    implements _$$TaskListLoadedFailedStateCopyWith<$Res> {
  __$$TaskListLoadedFailedStateCopyWithImpl(_$TaskListLoadedFailedState _value,
      $Res Function(_$TaskListLoadedFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TaskListLoadedFailedState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskListLoadedFailedState implements TaskListLoadedFailedState {
  const _$TaskListLoadedFailedState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TaskListState.loadedFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListLoadedFailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListLoadedFailedStateCopyWith<_$TaskListLoadedFailedState>
      get copyWith => __$$TaskListLoadedFailedStateCopyWithImpl<
          _$TaskListLoadedFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(List<Todo> tasks, bool isSorting) loaded,
    required TResult Function(String error) loadedFailed,
  }) {
    return loadedFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? loading,
    TResult? Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult? Function(String error)? loadedFailed,
  }) {
    return loadedFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(List<Todo> tasks, bool isSorting)? loaded,
    TResult Function(String error)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListUninitializedState value) uninitialized,
    required TResult Function(TaskListLoadingState value) loading,
    required TResult Function(TaskListLoadedState value) loaded,
    required TResult Function(TaskListLoadedFailedState value) loadedFailed,
  }) {
    return loadedFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListUninitializedState value)? uninitialized,
    TResult? Function(TaskListLoadingState value)? loading,
    TResult? Function(TaskListLoadedState value)? loaded,
    TResult? Function(TaskListLoadedFailedState value)? loadedFailed,
  }) {
    return loadedFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListUninitializedState value)? uninitialized,
    TResult Function(TaskListLoadingState value)? loading,
    TResult Function(TaskListLoadedState value)? loaded,
    TResult Function(TaskListLoadedFailedState value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(this);
    }
    return orElse();
  }
}

abstract class TaskListLoadedFailedState implements TaskListState {
  const factory TaskListLoadedFailedState({required final String error}) =
      _$TaskListLoadedFailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$TaskListLoadedFailedStateCopyWith<_$TaskListLoadedFailedState>
      get copyWith => throw _privateConstructorUsedError;
}
