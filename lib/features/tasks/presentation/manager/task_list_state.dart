import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_list_state.freezed.dart';

@freezed
abstract class TaskListState with _$TaskListState {
  const factory TaskListState.uninitialized() = TaskListUninitializedState;
  const factory TaskListState.loading() = TaskListLoadingState;
  const factory TaskListState.loaded({required List<Todo> tasks, @Default(false) bool isSorting}) = TaskListLoadedState;
  const factory TaskListState.loadedFailed({required String error}) = TaskListLoadedFailedState;
}

extension TaskListStateExtension on TaskListState {
  int? get totalTasks {
    final currentState = this;
    if (currentState is TaskListLoadedState) {
      return currentState.tasks.length;
    }
    return null;
  }

  int? get completedTasks {
    final currentState = this;
    if (currentState is TaskListLoadedState) {
      return currentState.tasks.where((task) => task.isCompleted).length;
    }
    return null;
  }
}