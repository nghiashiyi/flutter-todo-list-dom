import 'package:dartz/dartz.dart';
import 'package:flutter_todo_list_dom/core/errors/failure.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';

abstract class TaskRepository {
  Future<Either<Failure, Todo>> createTask({
    required String title,
    String? content,
    required int priority,
  });

  Future<Either<Failure, bool>> deleteTask({required String id});

  Future<Either<Failure, Todo>> updateTask({
    String? title,
    String? content,
    int? priority,
  });
}
