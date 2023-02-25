import 'package:dartz/dartz.dart';
import 'package:flutter_todo_list_dom/core/errors/failure.dart';
import 'package:flutter_todo_list_dom/core/usecase/usecase.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/repositories/task_repository.dart';

class UpdateTask implements UseCase<Todo, UpdateTaskParams> {
  final TaskRepository repository;

  UpdateTask({required this.repository});

  @override
  Future<Either<Failure, Todo>> call(params) async {
    return await repository.updateTask(
      title: params.title,
      priority: params.priority,
      content: params.content,
    );
  }
}

class UpdateTaskParams {
  final String? title;
  final String? content;
  final int? priority;

  UpdateTaskParams({this.title, this.content, this.priority});
}
