import 'package:dartz/dartz.dart';
import 'package:flutter_todo_list_dom/core/errors/failure.dart';
import 'package:flutter_todo_list_dom/core/usecase/usecase.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/repositories/task_repository.dart';

class DeleteTask implements UseCase<bool, DeleteTaskParams> {
  final TaskRepository repository;

  DeleteTask({required this.repository});

  @override
  Future<Either<Failure, bool>> call(params) async {
    return await repository.deleteTask(id: params.id);
  }
}

class DeleteTaskParams {
  final String id;

  DeleteTaskParams({required this.id});
}
