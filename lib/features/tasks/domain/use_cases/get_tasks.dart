import 'package:dartz/dartz.dart';
import 'package:flutter_todo_list_dom/core/errors/failure.dart';
import 'package:flutter_todo_list_dom/core/usecase/usecase.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/repositories/task_repository.dart';

class GetTasks implements UseCase<List<Todo>, NoParams> {
  final TaskRepository repository;

  GetTasks({required this.repository});

  @override
  Future<Either<Failure, List<Todo>>> call(params) async {
    return await repository.getTasks();
  }
}
