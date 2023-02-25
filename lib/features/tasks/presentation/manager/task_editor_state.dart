import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_editor_state.freezed.dart';

@freezed
abstract class TaskEditorState with _$TaskEditorState {
  const factory TaskEditorState.editing({Todo? initialTodo}) =
      TaskEditorEditingState;
  const factory TaskEditorState.saving({Todo? initialTodo}) =
      TaskEditorSavingState;
  const factory TaskEditorState.saved({Todo? initialTodo}) =
      TaskEditorSavedState;
  const factory TaskEditorState.savedFailed({
    required String error,
    Todo? initialTodo,
  }) = TaskEditorSavedFailedState;
}

extension TaskEditorStateExtension on TaskEditorState {
  bool get isEditMode {
    final currentState = this;
    if (currentState is TaskEditorEditingState) {
      return currentState.initialTodo != null;
    }
    if (currentState is TaskEditorSavingState) {
      return currentState.initialTodo != null;
    }
    if (currentState is TaskEditorSavedState) {
      return currentState.initialTodo != null;
    }
    if (currentState is TaskEditorSavedFailedState) {
      return currentState.initialTodo != null;
    }
    return false;
  }
}
