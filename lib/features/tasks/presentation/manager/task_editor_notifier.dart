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
  final Todo? initialTodo;
  TaskEditorNotifier({
    this.initialTodo,
    required this.createTaskUseCase,
    required this.updateTaskUseCase,
  }) : super(TaskEditorState.editing(initialTodo: initialTodo));

  void saveEditor({
    String? title,
    String? priority,
    String? content,
  }) async {
    assert(state.isEditMode);
    if (title == null) {
      state = TaskEditorState.savedFailed(
        error: "Please fill title",
        initialTodo: initialTodo,
      );
      return;
    }
    if (priority == null) {
      state = TaskEditorState.savedFailed(
        error: "Please don't leave priority field empty",
        initialTodo: initialTodo,
      );
      return;
    }
    final priorityNum = int.tryParse(priority);
    if (priorityNum == null) {
      state = TaskEditorState.savedFailed(
        error: "Invalid priority input",
        initialTodo: initialTodo,
      );
      return;
    }
    if (priorityNum > 10) {
      state = TaskEditorState.savedFailed(
        error: "Priority only accepts from 1-10",
        initialTodo: initialTodo,
      );
      return;
    }
    final response = await updateTaskUseCase(UpdateTaskParams(
      id: initialTodo!.id,
      title: title,
      priority: priorityNum,
      content: content,
    ));
    response.fold((failure) {
      state = TaskEditorState.savedFailed(error: failure.message);
    }, (succeeded) {
      state = const TaskEditorState.saved();
    });
  }

  void createNew({
    String? title,
    String? priority,
    String? content,
  }) async {
    assert(!state.isEditMode);
    if (title == null) {
      state = const TaskEditorState.savedFailed(error: "Please fill title");
      return;
    }
    if (priority == null) {
      state = const TaskEditorState.savedFailed(
          error: "Please don't leave priority field empty");
      return;
    }
    final priorityNum = int.tryParse(priority);
    if (priorityNum == null) {
      state =
          const TaskEditorState.savedFailed(error: "Invalid priority input");
      return;
    }
    if (priorityNum > 10) {
      state = const TaskEditorState.savedFailed(
          error: "Priority only accepts from 1-10");
      return;
    }
    final response = await createTaskUseCase(CreateNewTaskParams(
      title: title,
      priority: priorityNum,
      content: content,
    ));
    response.fold((failure) {
      state = TaskEditorState.savedFailed(error: failure.message);
    }, (succeeded) {
      state = const TaskEditorState.saved();
    });
  }
}
