import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/create_task.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/update_task.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_editor_state.dart';
import 'package:get_it/get_it.dart';

final taskEditorProvider = StateNotifierProvider.family
    .autoDispose<TaskEditorNotifier, TaskEditorState, Todo?>((ref, task) {
  return TaskEditorNotifier(
      createTaskUseCase: GetIt.I<CreateNewTask>(),
      updateTaskUseCase: GetIt.I<UpdateTask>(),
      initialTodo: task);
});

class TaskEditorNotifier extends StateNotifier<TaskEditorState> {
  final CreateNewTask createTaskUseCase;
  final UpdateTask updateTaskUseCase;

  TaskEditorNotifier({
    Todo? initialTodo,
    required this.createTaskUseCase,
    required this.updateTaskUseCase,
  }) : super(TaskEditorState.editing(initialTodo: initialTodo));

  void saveEditor({
    String? title,
    int? priority,
    String? content,
  }) async {
    assert(state.isEditMode);
    final currentState = state;
    if (currentState is TaskEditorEditingState) {
      final response = await updateTaskUseCase(UpdateTaskParams(
        id: currentState.initialTodo!.id,
        title: title,
        priority: priority,
        content: content,
      ));
      response.fold((failure) {
        state = TaskEditorState.savedFailed(error: failure.message);
      }, (succeeded) {
        state = const TaskEditorState.saved();
      });
    }
  }

  void createNew({
    required String title,
    required int priority,
    String? content,
  }) async {
    assert(!state.isEditMode);
    final currentState = state;
    if (currentState is TaskEditorEditingState) {
      final response = await createTaskUseCase(CreateNewTaskParams(
        title: title,
        priority: priority,
        content: content,
      ));
      response.fold((failure) {
        state = TaskEditorState.savedFailed(error: failure.message);
      }, (succeeded) {
        state = const TaskEditorState.saved();
      });
    }
  }
}
