import 'package:dartz/dartz.dart';
import 'package:flutter_todo_list_dom/core/errors/failure.dart';
import 'package:flutter_todo_list_dom/core/usecase/usecase.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/repositories/task_repository.dart';

class CreateNewTask implements UseCase<Todo, CreateNewTaskParams> {
  final TaskRepository repository;

  CreateNewTask({required this.repository});

  @override
  Future<Either<Failure, Todo>> call(params) async {
    return await repository.createTask(
      title: params.title,
      priority: params.priority,
      content: params.content,
    );
  }
}

class CreateNewTaskParams {
  final String title;
  final String? content;
  final int priority;

  CreateNewTaskParams(
      {required this.title, this.content, required this.priority});
}
