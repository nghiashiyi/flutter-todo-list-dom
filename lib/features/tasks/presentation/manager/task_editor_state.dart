import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_editor_state.freezed.dart';

@freezed
abstract class TaskEditorState with _$TaskEditorState {
  const factory TaskEditorState.editing({Todo? initialTodo}) = TaskEditorEditingState;
  const factory TaskEditorState.saving() = TaskEditorSavingState;
  const factory TaskEditorState.saved() = TaskEditorSavedState;
  const factory TaskEditorState.savedFailed({required String error}) =
      TaskEditorSavedFailedState;
}
