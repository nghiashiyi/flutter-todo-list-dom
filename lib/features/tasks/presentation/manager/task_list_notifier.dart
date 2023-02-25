import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_list_dom/core/usecase/usecase.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/delete_task.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/get_tasks.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/update_task.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_list_state.dart';
import 'package:get_it/get_it.dart';

final taskListingProvider =
    StateNotifierProvider<TaskListNotifier, TaskListState>((ref) {
  return TaskListNotifier(
    getTasksUseCase: GetIt.I<GetTasks>(),
    updateTaskUseCase: GetIt.I<UpdateTask>(),
    deleteTaskUseCase: GetIt.I<DeleteTask>(),
  );
});

class TaskListNotifier extends StateNotifier<TaskListState> {
  final GetTasks getTasksUseCase;
  final UpdateTask updateTaskUseCase;
  final DeleteTask deleteTaskUseCase;

  TaskListNotifier({
    required this.updateTaskUseCase,
    required this.deleteTaskUseCase,
    required this.getTasksUseCase,
  }) : super(const TaskListState.uninitialized());

  void loadOrRefreshTask() async {
    state = const TaskListState.loading();
    final response = await getTasksUseCase(NoParams());
    response.fold((failure) {
      state = TaskListState.loadedFailed(error: failure.message);
    }, (tasks) {
      tasks.shuffle();
      state = TaskListState.loaded(tasks: tasks);
    });
  }

  void sortTasksByPriority() async {
    final currentState = state;
    if (currentState is TaskListLoadedState) {
      final currentTasks = List<Todo>.from(currentState.tasks);
      currentTasks
          .sort((task1, task2) => task2.priority.compareTo(task1.priority));
      state = TaskListState.loaded(tasks: currentTasks);
    }
  }

  void sortTasksByName() async {
    final currentState = state;
    if (currentState is TaskListLoadedState) {
      final currentTasks = List<Todo>.from(currentState.tasks);
      currentTasks.sort((task1, task2) => task1.title.compareTo(task2.title));
      state = TaskListState.loaded(tasks: currentTasks);
    }
  }

  void completeTask({required String id}) async {
    final currentState = state;
    if (currentState is TaskListLoadedState) {
      final updatedTasks = currentState.tasks.map((task) {
        if (task.id == id) {
          return task.copyWith(isCompleted: !task.isCompleted);
        }
        return task;
      }).toList();
      state = TaskListState.loaded(tasks: updatedTasks);
      await updateTaskUseCase(UpdateTaskParams(id: id));
    }
  }

  void deleteTask({required String id}) async {
    final currentState = state;
    if (currentState is TaskListLoadedState) {
      final updatedTasks = List<Todo>.from(currentState.tasks);
      updatedTasks.removeWhere((element) => element.id == id);
      state = TaskListState.loaded(tasks: updatedTasks);
      await deleteTaskUseCase(DeleteTaskParams(id: id));
    }
  }
}
